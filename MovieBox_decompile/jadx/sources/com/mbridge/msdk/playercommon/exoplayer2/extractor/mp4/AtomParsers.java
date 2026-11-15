package com.mbridge.msdk.playercommon.exoplayer2.extractor.mp4;

import android.util.Log;
import android.util.Pair;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.ParserException;
import com.mbridge.msdk.playercommon.exoplayer2.audio.Ac3Util;
import com.mbridge.msdk.playercommon.exoplayer2.drm.DrmInitData;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.GaplessInfoHolder;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.Metadata;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.CodecSpecificDataUtil;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import com.mbridge.msdk.playercommon.exoplayer2.video.AvcConfig;
import com.mbridge.msdk.playercommon.exoplayer2.video.HevcConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

final class AtomParsers {
    private static final int MAX_GAPLESS_TRIM_SIZE_SAMPLES = 3;
    private static final String TAG = "AtomParsers";
    private static final int TYPE_vide = Util.getIntegerCodeForString("vide");
    private static final int TYPE_soun = Util.getIntegerCodeForString("soun");
    private static final int TYPE_text = Util.getIntegerCodeForString(MimeTypes.BASE_TYPE_TEXT);
    private static final int TYPE_sbtl = Util.getIntegerCodeForString("sbtl");
    private static final int TYPE_subt = Util.getIntegerCodeForString("subt");
    private static final int TYPE_clcp = Util.getIntegerCodeForString("clcp");
    private static final int TYPE_meta = Util.getIntegerCodeForString("meta");

    private static final class ChunkIterator {
        private final ParsableByteArray chunkOffsets;
        private final boolean chunkOffsetsAreLongs;
        public int index;
        public final int length;
        private int nextSamplesPerChunkChangeIndex;
        public int numSamples;
        public long offset;
        private int remainingSamplesPerChunkChanges;
        private final ParsableByteArray stsc;

        public ChunkIterator(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, boolean z10) {
            this.stsc = parsableByteArray;
            this.chunkOffsets = parsableByteArray2;
            this.chunkOffsetsAreLongs = z10;
            parsableByteArray2.setPosition(12);
            this.length = parsableByteArray2.readUnsignedIntToInt();
            parsableByteArray.setPosition(12);
            this.remainingSamplesPerChunkChanges = parsableByteArray.readUnsignedIntToInt();
            Assertions.checkState(parsableByteArray.readInt() == 1, "first_chunk must be 1");
            this.index = -1;
        }

        public boolean moveNext() {
            int i10 = this.index + 1;
            this.index = i10;
            if (i10 == this.length) {
                return false;
            }
            this.offset = this.chunkOffsetsAreLongs ? this.chunkOffsets.readUnsignedLongToLong() : this.chunkOffsets.readUnsignedInt();
            if (this.index == this.nextSamplesPerChunkChangeIndex) {
                this.numSamples = this.stsc.readUnsignedIntToInt();
                this.stsc.skipBytes(4);
                int i11 = this.remainingSamplesPerChunkChanges - 1;
                this.remainingSamplesPerChunkChanges = i11;
                this.nextSamplesPerChunkChangeIndex = i11 > 0 ? this.stsc.readUnsignedIntToInt() - 1 : -1;
            }
            return true;
        }
    }

    private interface SampleSizeBox {
        int getSampleCount();

        boolean isFixedSampleSize();

        int readNextSampleSize();
    }

    private static final class StsdData {
        public static final int STSD_HEADER_SIZE = 8;
        public Format format;
        public int nalUnitLengthFieldLength;
        public int requiredSampleTransformation = 0;
        public final TrackEncryptionBox[] trackEncryptionBoxes;

        public StsdData(int i10) {
            this.trackEncryptionBoxes = new TrackEncryptionBox[i10];
        }
    }

    static final class StszSampleSizeBox implements SampleSizeBox {
        private final ParsableByteArray data;
        private final int fixedSampleSize;
        private final int sampleCount;

        public StszSampleSizeBox(Atom.LeafAtom leafAtom) {
            ParsableByteArray parsableByteArray = leafAtom.data;
            this.data = parsableByteArray;
            parsableByteArray.setPosition(12);
            this.fixedSampleSize = parsableByteArray.readUnsignedIntToInt();
            this.sampleCount = parsableByteArray.readUnsignedIntToInt();
        }

        @Override
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override
        public boolean isFixedSampleSize() {
            return this.fixedSampleSize != 0;
        }

        @Override
        public int readNextSampleSize() {
            int i10 = this.fixedSampleSize;
            return i10 == 0 ? this.data.readUnsignedIntToInt() : i10;
        }
    }

    static final class Stz2SampleSizeBox implements SampleSizeBox {
        private int currentByte;
        private final ParsableByteArray data;
        private final int fieldSize;
        private final int sampleCount;
        private int sampleIndex;

        public Stz2SampleSizeBox(Atom.LeafAtom leafAtom) {
            ParsableByteArray parsableByteArray = leafAtom.data;
            this.data = parsableByteArray;
            parsableByteArray.setPosition(12);
            this.fieldSize = parsableByteArray.readUnsignedIntToInt() & 255;
            this.sampleCount = parsableByteArray.readUnsignedIntToInt();
        }

        @Override
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override
        public boolean isFixedSampleSize() {
            return false;
        }

        @Override
        public int readNextSampleSize() {
            int i10 = this.fieldSize;
            if (i10 == 8) {
                return this.data.readUnsignedByte();
            }
            if (i10 == 16) {
                return this.data.readUnsignedShort();
            }
            int i11 = this.sampleIndex;
            this.sampleIndex = i11 + 1;
            if (i11 % 2 != 0) {
                return this.currentByte & 15;
            }
            int unsignedByte = this.data.readUnsignedByte();
            this.currentByte = unsignedByte;
            return (unsignedByte & 240) >> 4;
        }
    }

    private static final class TkhdData {
        private final long duration;

        private final int f35947id;
        private final int rotationDegrees;

        public TkhdData(int i10, long j10, int i11) {
            this.f35947id = i10;
            this.duration = j10;
            this.rotationDegrees = i11;
        }
    }

    public static final class UnhandledEditListException extends ParserException {
    }

    private AtomParsers() {
    }

    private static boolean canApplyEditWithGaplessInfo(long[] jArr, long j10, long j11, long j12) {
        int length = jArr.length - 1;
        return jArr[0] <= j11 && j11 < jArr[Util.constrainValue(3, 0, length)] && jArr[Util.constrainValue(jArr.length - 3, 0, length)] < j12 && j12 <= j10;
    }

    private static int findEsdsPosition(ParsableByteArray parsableByteArray, int i10, int i11) {
        int position = parsableByteArray.getPosition();
        while (position - i10 < i11) {
            parsableByteArray.setPosition(position);
            int i12 = parsableByteArray.readInt();
            Assertions.checkArgument(i12 > 0, "childAtomSize should be positive");
            if (parsableByteArray.readInt() == Atom.TYPE_esds) {
                return position;
            }
            position += i12;
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void parseAudioSampleEntry(ParsableByteArray parsableByteArray, int i10, int i11, int i12, int i13, String str, boolean z10, DrmInitData drmInitData, StsdData stsdData, int i14) throws ParserException {
        int unsignedShort;
        int unsignedFixedPoint1616;
        int unsignedIntToInt;
        String str2;
        boolean z11;
        int i15;
        int i16 = i11;
        DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        parsableByteArray.setPosition(i16 + 16);
        int i17 = 0;
        if (z10) {
            unsignedShort = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
        } else {
            parsableByteArray.skipBytes(8);
            unsignedShort = 0;
        }
        int i18 = 2;
        boolean z12 = true;
        if (unsignedShort == 0 || unsignedShort == 1) {
            int unsignedShort2 = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
            unsignedFixedPoint1616 = parsableByteArray.readUnsignedFixedPoint1616();
            if (unsignedShort == 1) {
                parsableByteArray.skipBytes(16);
            }
            unsignedIntToInt = unsignedShort2;
        } else {
            if (unsignedShort != 2) {
                return;
            }
            parsableByteArray.skipBytes(16);
            unsignedFixedPoint1616 = (int) Math.round(parsableByteArray.readDouble());
            unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
            parsableByteArray.skipBytes(20);
        }
        int position = parsableByteArray.getPosition();
        int iIntValue = i10;
        if (iIntValue == Atom.TYPE_enca) {
            Pair<Integer, TrackEncryptionBox> sampleEntryEncryptionData = parseSampleEntryEncryptionData(parsableByteArray, i16, i12);
            if (sampleEntryEncryptionData != null) {
                iIntValue = ((Integer) sampleEntryEncryptionData.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((TrackEncryptionBox) sampleEntryEncryptionData.second).schemeType);
                stsdData.trackEncryptionBoxes[i14] = (TrackEncryptionBox) sampleEntryEncryptionData.second;
            }
            parsableByteArray.setPosition(position);
        }
        DrmInitData drmInitData2 = drmInitDataCopyWithSchemeType;
        int i19 = Atom.TYPE_ac_3;
        String str3 = MimeTypes.AUDIO_RAW;
        if (iIntValue == i19) {
            str2 = MimeTypes.AUDIO_AC3;
        } else if (iIntValue == Atom.TYPE_ec_3) {
            str2 = MimeTypes.AUDIO_E_AC3;
        } else if (iIntValue == Atom.TYPE_dtsc) {
            str2 = MimeTypes.AUDIO_DTS;
        } else if (iIntValue == Atom.TYPE_dtsh || iIntValue == Atom.TYPE_dtsl) {
            str2 = MimeTypes.AUDIO_DTS_HD;
        } else if (iIntValue == Atom.TYPE_dtse) {
            str2 = MimeTypes.AUDIO_DTS_EXPRESS;
        } else if (iIntValue == Atom.TYPE_samr) {
            str2 = MimeTypes.AUDIO_AMR_NB;
        } else if (iIntValue == Atom.TYPE_sawb) {
            str2 = MimeTypes.AUDIO_AMR_WB;
        } else if (iIntValue == Atom.TYPE_lpcm || iIntValue == Atom.TYPE_sowt) {
            str2 = MimeTypes.AUDIO_RAW;
        } else if (iIntValue == Atom.TYPE__mp3) {
            str2 = MimeTypes.AUDIO_MPEG;
        } else {
            str2 = iIntValue == Atom.TYPE_alac ? MimeTypes.AUDIO_ALAC : null;
        }
        String str4 = str2;
        int iIntValue2 = unsignedFixedPoint1616;
        int iIntValue3 = unsignedIntToInt;
        int i20 = position;
        byte[] bArr = null;
        while (i20 - i16 < i12) {
            parsableByteArray.setPosition(i20);
            int i21 = parsableByteArray.readInt();
            Assertions.checkArgument(i21 > 0 ? z12 : i17, "childAtomSize should be positive");
            int i22 = parsableByteArray.readInt();
            int i23 = Atom.TYPE_esds;
            if (i22 != i23) {
                if (z10 && i22 == Atom.TYPE_wave) {
                    z11 = true;
                } else {
                    if (i22 == Atom.TYPE_dac3) {
                        parsableByteArray.setPosition(i20 + 8);
                        stsdData.format = Ac3Util.parseAc3AnnexFFormat(parsableByteArray, Integer.toString(i13), str, drmInitData2);
                    } else if (i22 == Atom.TYPE_dec3) {
                        parsableByteArray.setPosition(i20 + 8);
                        stsdData.format = Ac3Util.parseEAc3AnnexFFormat(parsableByteArray, Integer.toString(i13), str, drmInitData2);
                    } else {
                        if (i22 == Atom.TYPE_ddts) {
                            i15 = i20;
                            str4 = str4;
                            str3 = str3;
                            drmInitData2 = drmInitData2;
                            z11 = true;
                            i18 = i18;
                            i17 = i17;
                            stsdData.format = Format.createAudioSampleFormat(Integer.toString(i13), str4, null, -1, -1, iIntValue3, iIntValue2, null, drmInitData2, 0, str);
                            i21 = i21;
                        } else {
                            i15 = i20;
                            str4 = str4;
                            str3 = str3;
                            drmInitData2 = drmInitData2;
                            i18 = i18;
                            i17 = i17;
                            z11 = true;
                            if (i22 == Atom.TYPE_alac) {
                                byte[] bArr2 = new byte[i21];
                                i20 = i15;
                                parsableByteArray.setPosition(i20);
                                parsableByteArray.readBytes(bArr2, i17, i21);
                                bArr = bArr2;
                            }
                        }
                        i20 = i15;
                    }
                    str4 = str4;
                    str3 = str3;
                    drmInitData2 = drmInitData2;
                    i18 = i18;
                    i17 = i17;
                    z11 = true;
                }
                str4 = str4;
                i20 += i21;
                i17 = i17;
                z12 = z11;
                drmInitData2 = drmInitData2;
                i18 = i18;
                str3 = str3;
                i16 = i11;
            } else {
                z11 = z12;
            }
            int iFindEsdsPosition = i22 == i23 ? i20 : findEsdsPosition(parsableByteArray, i20, i21);
            if (iFindEsdsPosition != -1) {
                Pair<String, byte[]> esdsFromParent = parseEsdsFromParent(parsableByteArray, iFindEsdsPosition);
                str4 = (String) esdsFromParent.first;
                bArr = (byte[]) esdsFromParent.second;
                if (MimeTypes.AUDIO_AAC.equals(str4)) {
                    Pair<Integer, Integer> aacAudioSpecificConfig = CodecSpecificDataUtil.parseAacAudioSpecificConfig(bArr);
                    iIntValue2 = ((Integer) aacAudioSpecificConfig.first).intValue();
                    iIntValue3 = ((Integer) aacAudioSpecificConfig.second).intValue();
                }
            } else {
                str4 = str4;
            }
            i20 += i21;
            i17 = i17;
            z12 = z11;
            drmInitData2 = drmInitData2;
            i18 = i18;
            str3 = str3;
            i16 = i11;
        }
        String str5 = str4;
        String str6 = str3;
        DrmInitData drmInitData3 = drmInitData2;
        int i24 = i18;
        if (stsdData.format != null || str5 == null) {
            return;
        }
        stsdData.format = Format.createAudioSampleFormat(Integer.toString(i13), str5, null, -1, -1, iIntValue3, iIntValue2, str6.equals(str5) ? i24 : -1, bArr != null ? Collections.singletonList(bArr) : null, drmInitData3, 0, str);
    }

    static Pair<Integer, TrackEncryptionBox> parseCommonEncryptionSinfFromParent(ParsableByteArray parsableByteArray, int i10, int i11) {
        int i12 = i10 + 8;
        int i13 = -1;
        int i14 = 0;
        String string = null;
        Integer numValueOf = null;
        while (i12 - i10 < i11) {
            parsableByteArray.setPosition(i12);
            int i15 = parsableByteArray.readInt();
            int i16 = parsableByteArray.readInt();
            if (i16 == Atom.TYPE_frma) {
                numValueOf = Integer.valueOf(parsableByteArray.readInt());
            } else if (i16 == Atom.TYPE_schm) {
                parsableByteArray.skipBytes(4);
                string = parsableByteArray.readString(4);
            } else if (i16 == Atom.TYPE_schi) {
                i13 = i12;
                i14 = i15;
            }
            i12 += i15;
        }
        if (!C.CENC_TYPE_cenc.equals(string) && !C.CENC_TYPE_cbc1.equals(string) && !C.CENC_TYPE_cens.equals(string) && !C.CENC_TYPE_cbcs.equals(string)) {
            return null;
        }
        Assertions.checkArgument(numValueOf != null, "frma atom is mandatory");
        Assertions.checkArgument(i13 != -1, "schi atom is mandatory");
        TrackEncryptionBox schiFromParent = parseSchiFromParent(parsableByteArray, i13, i14, string);
        Assertions.checkArgument(schiFromParent != null, "tenc atom is mandatory");
        return Pair.create(numValueOf, schiFromParent);
    }

    private static Pair<long[], long[]> parseEdts(Atom.ContainerAtom containerAtom) {
        Atom.LeafAtom leafAtomOfType;
        if (containerAtom == null || (leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_elst)) == null) {
            return Pair.create(null, null);
        }
        ParsableByteArray parsableByteArray = leafAtomOfType.data;
        parsableByteArray.setPosition(8);
        int fullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        long[] jArr = new long[unsignedIntToInt];
        long[] jArr2 = new long[unsignedIntToInt];
        for (int i10 = 0; i10 < unsignedIntToInt; i10++) {
            jArr[i10] = fullAtomVersion == 1 ? parsableByteArray.readUnsignedLongToLong() : parsableByteArray.readUnsignedInt();
            jArr2[i10] = fullAtomVersion == 1 ? parsableByteArray.readLong() : parsableByteArray.readInt();
            if (parsableByteArray.readShort() != 1) {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
            parsableByteArray.skipBytes(2);
        }
        return Pair.create(jArr, jArr2);
    }

    private static Pair<String, byte[]> parseEsdsFromParent(ParsableByteArray parsableByteArray, int i10) {
        parsableByteArray.setPosition(i10 + 12);
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        parsableByteArray.skipBytes(2);
        int unsignedByte = parsableByteArray.readUnsignedByte();
        if ((unsignedByte & 128) != 0) {
            parsableByteArray.skipBytes(2);
        }
        if ((unsignedByte & 64) != 0) {
            parsableByteArray.skipBytes(parsableByteArray.readUnsignedShort());
        }
        if ((unsignedByte & 32) != 0) {
            parsableByteArray.skipBytes(2);
        }
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        String mimeTypeFromMp4ObjectType = MimeTypes.getMimeTypeFromMp4ObjectType(parsableByteArray.readUnsignedByte());
        if (MimeTypes.AUDIO_MPEG.equals(mimeTypeFromMp4ObjectType) || MimeTypes.AUDIO_DTS.equals(mimeTypeFromMp4ObjectType) || MimeTypes.AUDIO_DTS_HD.equals(mimeTypeFromMp4ObjectType)) {
            return Pair.create(mimeTypeFromMp4ObjectType, null);
        }
        parsableByteArray.skipBytes(12);
        parsableByteArray.skipBytes(1);
        int expandableClassSize = parseExpandableClassSize(parsableByteArray);
        byte[] bArr = new byte[expandableClassSize];
        parsableByteArray.readBytes(bArr, 0, expandableClassSize);
        return Pair.create(mimeTypeFromMp4ObjectType, bArr);
    }

    private static int parseExpandableClassSize(ParsableByteArray parsableByteArray) {
        int unsignedByte = parsableByteArray.readUnsignedByte();
        int i10 = unsignedByte & 127;
        while ((unsignedByte & 128) == 128) {
            unsignedByte = parsableByteArray.readUnsignedByte();
            i10 = (i10 << 7) | (unsignedByte & 127);
        }
        return i10;
    }

    private static int parseHdlr(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(16);
        int i10 = parsableByteArray.readInt();
        if (i10 == TYPE_soun) {
            return 1;
        }
        if (i10 == TYPE_vide) {
            return 2;
        }
        if (i10 == TYPE_text || i10 == TYPE_sbtl || i10 == TYPE_subt || i10 == TYPE_clcp) {
            return 3;
        }
        return i10 == TYPE_meta ? 4 : -1;
    }

    private static Metadata parseIlst(ParsableByteArray parsableByteArray, int i10) {
        parsableByteArray.skipBytes(8);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray.getPosition() < i10) {
            Metadata.Entry ilstElement = MetadataUtil.parseIlstElement(parsableByteArray);
            if (ilstElement != null) {
                arrayList.add(ilstElement);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static Pair<Long, String> parseMdhd(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        int fullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(fullAtomVersion == 0 ? 8 : 16);
        long unsignedInt = parsableByteArray.readUnsignedInt();
        parsableByteArray.skipBytes(fullAtomVersion == 0 ? 4 : 8);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        return Pair.create(Long.valueOf(unsignedInt), "" + ((char) (((unsignedShort >> 10) & 31) + 96)) + ((char) (((unsignedShort >> 5) & 31) + 96)) + ((char) ((unsignedShort & 31) + 96)));
    }

    private static Metadata parseMetaAtom(ParsableByteArray parsableByteArray, int i10) {
        parsableByteArray.skipBytes(12);
        while (parsableByteArray.getPosition() < i10) {
            int position = parsableByteArray.getPosition();
            int i11 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_ilst) {
                parsableByteArray.setPosition(position);
                return parseIlst(parsableByteArray, position + i11);
            }
            parsableByteArray.skipBytes(i11 - 8);
        }
        return null;
    }

    private static long parseMvhd(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        parsableByteArray.skipBytes(Atom.parseFullAtomVersion(parsableByteArray.readInt()) != 0 ? 16 : 8);
        return parsableByteArray.readUnsignedInt();
    }

    private static float parsePaspFromParent(ParsableByteArray parsableByteArray, int i10) {
        parsableByteArray.setPosition(i10 + 8);
        return parsableByteArray.readUnsignedIntToInt() / parsableByteArray.readUnsignedIntToInt();
    }

    private static byte[] parseProjFromParent(ParsableByteArray parsableByteArray, int i10, int i11) {
        int i12 = i10 + 8;
        while (i12 - i10 < i11) {
            parsableByteArray.setPosition(i12);
            int i13 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_proj) {
                return Arrays.copyOfRange(parsableByteArray.data, i12, i13 + i12);
            }
            i12 += i13;
        }
        return null;
    }

    private static Pair<Integer, TrackEncryptionBox> parseSampleEntryEncryptionData(ParsableByteArray parsableByteArray, int i10, int i11) {
        Pair<Integer, TrackEncryptionBox> commonEncryptionSinfFromParent;
        int position = parsableByteArray.getPosition();
        while (position - i10 < i11) {
            parsableByteArray.setPosition(position);
            int i12 = parsableByteArray.readInt();
            Assertions.checkArgument(i12 > 0, "childAtomSize should be positive");
            if (parsableByteArray.readInt() == Atom.TYPE_sinf && (commonEncryptionSinfFromParent = parseCommonEncryptionSinfFromParent(parsableByteArray, position, i12)) != null) {
                return commonEncryptionSinfFromParent;
            }
            position += i12;
        }
        return null;
    }

    private static TrackEncryptionBox parseSchiFromParent(ParsableByteArray parsableByteArray, int i10, int i11, String str) {
        int i12;
        int i13;
        int i14 = i10 + 8;
        while (true) {
            byte[] bArr = null;
            if (i14 - i10 >= i11) {
                return null;
            }
            parsableByteArray.setPosition(i14);
            int i15 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_tenc) {
                int fullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
                parsableByteArray.skipBytes(1);
                if (fullAtomVersion == 0) {
                    parsableByteArray.skipBytes(1);
                    i13 = 0;
                    i12 = 0;
                } else {
                    int unsignedByte = parsableByteArray.readUnsignedByte();
                    i12 = unsignedByte & 15;
                    i13 = (unsignedByte & 240) >> 4;
                }
                boolean z10 = parsableByteArray.readUnsignedByte() == 1;
                int unsignedByte2 = parsableByteArray.readUnsignedByte();
                byte[] bArr2 = new byte[16];
                parsableByteArray.readBytes(bArr2, 0, 16);
                if (z10 && unsignedByte2 == 0) {
                    int unsignedByte3 = parsableByteArray.readUnsignedByte();
                    bArr = new byte[unsignedByte3];
                    parsableByteArray.readBytes(bArr, 0, unsignedByte3);
                }
                return new TrackEncryptionBox(z10, str, unsignedByte2, bArr2, i13, i12, bArr);
            }
            i14 += i15;
        }
    }

    /* JADX WARN: Code duplicated, block: B:137:0x0343  */
    /* JADX WARN: Code duplicated, block: B:138:0x0345  */
    /* JADX WARN: Code duplicated, block: B:142:0x0351  */
    /* JADX WARN: Code duplicated, block: B:144:0x035c  */
    /* JADX WARN: Code duplicated, block: B:146:0x037a  */
    /* JADX WARN: Code duplicated, block: B:147:0x037c  */
    /* JADX WARN: Code duplicated, block: B:152:0x038b  */
    /* JADX WARN: Code duplicated, block: B:153:0x038d  */
    /* JADX WARN: Code duplicated, block: B:156:0x0392  */
    /* JADX WARN: Code duplicated, block: B:157:0x0395  */
    /* JADX WARN: Code duplicated, block: B:159:0x0398  */
    /* JADX WARN: Code duplicated, block: B:160:0x039b  */
    /* JADX WARN: Code duplicated, block: B:162:0x039f  */
    /* JADX WARN: Code duplicated, block: B:163:0x03a1  */
    /* JADX WARN: Code duplicated, block: B:165:0x03a5  */
    /* JADX WARN: Code duplicated, block: B:166:0x03a8  */
    /* JADX WARN: Code duplicated, block: B:170:0x03b2  */
    /* JADX WARN: Code duplicated, block: B:172:0x03c0  */
    /* JADX WARN: Code duplicated, block: B:174:0x03df  */
    /* JADX WARN: Code duplicated, block: B:175:0x03f3  */
    /* JADX WARN: Code duplicated, block: B:185:0x041f  */
    /* JADX WARN: Code duplicated, block: B:192:0x045d  */
    /* JADX WARN: Code duplicated, block: B:211:0x0386 A[EDGE_INSN: B:211:0x0386->B:150:0x0386 BREAK  A[LOOP:5: B:140:0x034a->B:149:0x0380], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:213:0x0380 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:214:0x047d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:46:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:48:0x0104 A[ADDED_TO_REGION, LOOP:1: B:48:0x0104->B:49:0x0106, LOOP_START, PHI: r14 r15 r23 r27
      0x0104: PHI (r14v7 int) = (r14v4 int), (r14v12 int) binds: [B:47:0x0102, B:49:0x0106] A[DONT_GENERATE, DONT_INLINE]
      0x0104: PHI (r15v8 int) = (r15v6 int), (r15v14 int) binds: [B:47:0x0102, B:49:0x0106] A[DONT_GENERATE, DONT_INLINE]
      0x0104: PHI (r23v4 int) = (r23v3 int), (r23v7 int) binds: [B:47:0x0102, B:49:0x0106] A[DONT_GENERATE, DONT_INLINE]
      0x0104: PHI (r27v5 long) = (r27v4 long), (r27v7 long) binds: [B:47:0x0102, B:49:0x0106] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:49:0x0106 A[LOOP:1: B:48:0x0104->B:49:0x0106, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:52:0x0124 A[ADDED_TO_REGION, LOOP:2: B:52:0x0124->B:54:0x0128, LOOP_START, PHI: r16 r21 r22
      0x0124: PHI (r16v16 int) = (r16v12 int), (r16v17 int) binds: [B:51:0x0122, B:54:0x0128] A[DONT_GENERATE, DONT_INLINE]
      0x0124: PHI (r21v6 int) = (r21v4 int), (r21v8 int) binds: [B:51:0x0122, B:54:0x0128] A[DONT_GENERATE, DONT_INLINE]
      0x0124: PHI (r22v8 int) = (r22v1 int), (r22v9 int) binds: [B:51:0x0122, B:54:0x0128] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:58:0x0141  */
    /* JADX WARN: Code duplicated, block: B:59:0x0146  */
    /* JADX WARN: Code duplicated, block: B:62:0x0150  */
    /* JADX WARN: Code duplicated, block: B:63:0x0152  */
    /* JADX WARN: Code duplicated, block: B:66:0x0157  */
    /* JADX WARN: Code duplicated, block: B:68:0x015e  */
    /* JADX WARN: Code duplicated, block: B:76:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:77:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:80:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:82:0x01af  */
    /* JADX WARN: Code duplicated, block: B:83:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:92:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:95:0x0212  */
    /* JADX WARN: Code duplicated, block: B:98:0x0220 A[LOOP:8: B:96:0x021a->B:98:0x0220, LOOP_END] */
    public static TrackSampleTable parseStbl(Track track, Atom.ContainerAtom containerAtom, GaplessInfoHolder gaplessInfoHolder) throws ParserException {
        SampleSizeBox stz2SampleSizeBox;
        boolean z10;
        int unsignedIntToInt;
        int unsignedIntToInt2;
        boolean z11;
        Track track2;
        String str;
        long[] jArr;
        int[] iArr;
        long[] jArr2;
        int[] iArr2;
        int i10;
        long[] jArr3;
        int[] iArr3;
        long j10;
        long jScaleLargeTimestamp;
        String str2;
        int i11;
        long[] jArr4;
        boolean z12;
        int i12;
        int i13;
        boolean z13;
        int i14;
        long[] jArr5;
        long[] jArr6;
        int[] iArr4;
        boolean z14;
        boolean z15;
        long[] jArr7;
        int[] iArr5;
        int i15;
        int[] iArr6;
        long[] jArr8;
        int i16;
        int i17;
        long[] jArr9;
        long[] jArr10;
        long j11;
        long j12;
        String str3;
        int[] iArr7;
        int[] iArr8;
        int[] iArr9;
        int iBinarySearchCeil;
        int iBinarySearchCeil2;
        int i18;
        int i19;
        long j13;
        int iBinarySearchCeil3;
        boolean z16;
        long[] jArr11;
        int[] iArr10;
        long[] jArr12;
        int[] iArr11;
        int i20;
        long j14;
        long j15;
        int i21;
        int i22;
        int i23;
        int unsignedIntToInt3;
        int i24;
        int i25;
        int i26;
        int unsignedIntToInt4;
        int i27;
        int i28;
        boolean z17;
        int i29;
        boolean z18;
        int nextSampleSize;
        int i30;
        int unsignedIntToInt5;
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_stsz);
        if (leafAtomOfType != null) {
            stz2SampleSizeBox = new StszSampleSizeBox(leafAtomOfType);
        } else {
            Atom.LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(Atom.TYPE_stz2);
            if (leafAtomOfType2 == null) {
                throw new ParserException("Track has no sample table size information");
            }
            stz2SampleSizeBox = new Stz2SampleSizeBox(leafAtomOfType2);
        }
        int sampleCount = stz2SampleSizeBox.getSampleCount();
        if (sampleCount == 0) {
            return new TrackSampleTable(track, new long[0], new int[0], 0, new long[0], new int[0], C.TIME_UNSET);
        }
        Atom.LeafAtom leafAtomOfType3 = containerAtom.getLeafAtomOfType(Atom.TYPE_stco);
        if (leafAtomOfType3 == null) {
            leafAtomOfType3 = containerAtom.getLeafAtomOfType(Atom.TYPE_co64);
            z10 = true;
        } else {
            z10 = false;
        }
        ParsableByteArray parsableByteArray = leafAtomOfType3.data;
        ParsableByteArray parsableByteArray2 = containerAtom.getLeafAtomOfType(Atom.TYPE_stsc).data;
        ParsableByteArray parsableByteArray3 = containerAtom.getLeafAtomOfType(Atom.TYPE_stts).data;
        Atom.LeafAtom leafAtomOfType4 = containerAtom.getLeafAtomOfType(Atom.TYPE_stss);
        ParsableByteArray parsableByteArray4 = null;
        ParsableByteArray parsableByteArray5 = leafAtomOfType4 != null ? leafAtomOfType4.data : null;
        Atom.LeafAtom leafAtomOfType5 = containerAtom.getLeafAtomOfType(Atom.TYPE_ctts);
        ParsableByteArray parsableByteArray6 = leafAtomOfType5 != null ? leafAtomOfType5.data : null;
        ChunkIterator chunkIterator = new ChunkIterator(parsableByteArray2, parsableByteArray, z10);
        parsableByteArray3.setPosition(12);
        int unsignedIntToInt6 = parsableByteArray3.readUnsignedIntToInt() - 1;
        int unsignedIntToInt7 = parsableByteArray3.readUnsignedIntToInt();
        int unsignedIntToInt8 = parsableByteArray3.readUnsignedIntToInt();
        if (parsableByteArray6 != null) {
            parsableByteArray6.setPosition(12);
            unsignedIntToInt = parsableByteArray6.readUnsignedIntToInt();
        } else {
            unsignedIntToInt = 0;
        }
        int unsignedIntToInt9 = -1;
        if (parsableByteArray5 != null) {
            parsableByteArray5.setPosition(12);
            unsignedIntToInt2 = parsableByteArray5.readUnsignedIntToInt();
            unsignedIntToInt9 = unsignedIntToInt2 > 0 ? parsableByteArray5.readUnsignedIntToInt() - 1 : -1;
            if (!stz2SampleSizeBox.isFixedSampleSize() && MimeTypes.AUDIO_RAW.equals(track.format.sampleMimeType) && unsignedIntToInt6 == 0 && unsignedIntToInt == 0 && unsignedIntToInt2 == 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            long j16 = 0;
            if (z11) {
                track2 = track;
                str = TAG;
                int i31 = chunkIterator.length;
                jArr = new long[i31];
                iArr = new int[i31];
                while (chunkIterator.moveNext()) {
                    int i32 = chunkIterator.index;
                    jArr[i32] = chunkIterator.offset;
                    iArr[i32] = chunkIterator.numSamples;
                }
                Format format = track2.format;
                FixedSampleSizeRechunker.Results resultsRechunk = FixedSampleSizeRechunker.rechunk(Util.getPcmFrameSize(format.pcmEncoding, format.channelCount), jArr, iArr, unsignedIntToInt8);
                jArr2 = resultsRechunk.offsets;
                iArr2 = resultsRechunk.sizes;
                i10 = resultsRechunk.maximumSize;
                jArr3 = resultsRechunk.timestamps;
                iArr3 = resultsRechunk.flags;
                j10 = resultsRechunk.duration;
            } else {
                jArr11 = new long[sampleCount];
                iArr10 = new int[sampleCount];
                int i33 = unsignedIntToInt2;
                jArr12 = new long[sampleCount];
                iArr11 = new int[sampleCount];
                i20 = unsignedIntToInt8;
                j14 = 0;
                j15 = 0;
                i21 = unsignedIntToInt6;
                i22 = 0;
                i23 = 0;
                unsignedIntToInt3 = 0;
                i24 = 0;
                i25 = 0;
                i26 = i33;
                unsignedIntToInt4 = unsignedIntToInt9;
                i27 = unsignedIntToInt;
                i28 = unsignedIntToInt7;
                while (i22 < sampleCount) {
                    while (i25 == 0) {
                        Assertions.checkState(chunkIterator.moveNext());
                        j15 = chunkIterator.offset;
                        i25 = chunkIterator.numSamples;
                        i21 = i21;
                        i28 = i28;
                    }
                    int i34 = i21;
                    int i35 = i28;
                    if (parsableByteArray6 != null) {
                        while (unsignedIntToInt3 == 0 && i27 > 0) {
                            unsignedIntToInt3 = parsableByteArray6.readUnsignedIntToInt();
                            i24 = parsableByteArray6.readInt();
                            i27--;
                        }
                        unsignedIntToInt3--;
                    }
                    int i36 = i24;
                    jArr11[i22] = j15;
                    nextSampleSize = stz2SampleSizeBox.readNextSampleSize();
                    iArr10[i22] = nextSampleSize;
                    if (nextSampleSize > i23) {
                        i23 = nextSampleSize;
                    }
                    jArr12[i22] = j14 + ((long) i36);
                    if (parsableByteArray4 == null) {
                        i30 = 1;
                    } else {
                        i30 = 0;
                    }
                    iArr11[i22] = i30;
                    if (i22 == unsignedIntToInt4) {
                        iArr11[i22] = 1;
                        i26--;
                        if (i26 > 0) {
                            unsignedIntToInt4 = parsableByteArray4.readUnsignedIntToInt() - 1;
                        }
                    }
                    j14 += (long) i20;
                    unsignedIntToInt5 = i35 - 1;
                    if (unsignedIntToInt5 != 0 && i34 > 0) {
                        i34--;
                        unsignedIntToInt5 = parsableByteArray3.readUnsignedIntToInt();
                        i20 = parsableByteArray3.readInt();
                    }
                    int i37 = unsignedIntToInt5;
                    j15 += (long) iArr10[i22];
                    i25--;
                    i22++;
                    stz2SampleSizeBox = stz2SampleSizeBox;
                    jArr11 = jArr11;
                    i28 = i37;
                    i24 = i36;
                    i21 = i34;
                }
                int i38 = i21;
                int i39 = i28;
                int i40 = i24;
                long[] jArr13 = jArr11;
                j10 = j14 + ((long) i40);
                if (unsignedIntToInt3 == 0) {
                    z17 = true;
                } else {
                    z17 = false;
                }
                Assertions.checkArgument(z17);
                while (i27 > 0) {
                    if (parsableByteArray6.readUnsignedIntToInt() == 0) {
                        z18 = true;
                    } else {
                        z18 = false;
                    }
                    Assertions.checkArgument(z18);
                    parsableByteArray6.readInt();
                    i27--;
                }
                if (i26 == 0 || i39 != 0) {
                    i29 = i25;
                } else {
                    i29 = i25;
                    if (i29 == 0 && i38 == 0) {
                        track2 = track;
                        str = TAG;
                    }
                    jArr3 = jArr12;
                    iArr2 = iArr10;
                    iArr3 = iArr11;
                    i10 = i23;
                    jArr2 = jArr13;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Inconsistent stbl box for track ");
                track2 = track;
                sb2.append(track2.f35948id);
                sb2.append(": remainingSynchronizationSamples ");
                sb2.append(i26);
                sb2.append(", remainingSamplesAtTimestampDelta ");
                sb2.append(i39);
                sb2.append(", remainingSamplesInChunk ");
                sb2.append(i29);
                sb2.append(", remainingTimestampDeltaChanges ");
                sb2.append(i38);
                String string = sb2.toString();
                str = TAG;
                Log.w(str, string);
                jArr3 = jArr12;
                iArr2 = iArr10;
                iArr3 = iArr11;
                i10 = i23;
                jArr2 = jArr13;
            }
            jScaleLargeTimestamp = Util.scaleLargeTimestamp(j10, 1000000L, track2.timescale);
            if (track2.editListDurations != null || gaplessInfoHolder.hasGaplessInfo()) {
                long[] jArr14 = jArr2;
                int[] iArr12 = iArr2;
                int i41 = i10;
                Util.scaleLargeTimestampsInPlace(jArr3, 1000000L, track2.timescale);
                return new TrackSampleTable(track, jArr14, iArr12, i41, jArr3, iArr3, jScaleLargeTimestamp);
            }
            long[] jArr15 = track2.editListDurations;
            if (jArr15.length == 1 && track2.type == 1 && jArr3.length >= 2) {
                long j17 = track2.editListMediaTimes[0];
                long jScaleLargeTimestamp2 = j17 + Util.scaleLargeTimestamp(jArr15[0], track2.timescale, track2.movieTimescale);
                str2 = str;
                if (canApplyEditWithGaplessInfo(jArr3, j10, j17, jScaleLargeTimestamp2)) {
                    long jScaleLargeTimestamp3 = Util.scaleLargeTimestamp(j17 - jArr3[0], track2.format.sampleRate, track2.timescale);
                    i11 = i10;
                    long jScaleLargeTimestamp4 = Util.scaleLargeTimestamp(j10 - jScaleLargeTimestamp2, track2.format.sampleRate, track2.timescale);
                    if ((jScaleLargeTimestamp3 != 0 || jScaleLargeTimestamp4 != 0) && jScaleLargeTimestamp3 <= 2147483647L && jScaleLargeTimestamp4 <= 2147483647L) {
                        gaplessInfoHolder.encoderDelay = (int) jScaleLargeTimestamp3;
                        gaplessInfoHolder.encoderPadding = (int) jScaleLargeTimestamp4;
                        Util.scaleLargeTimestampsInPlace(jArr3, 1000000L, track2.timescale);
                        return new TrackSampleTable(track, jArr2, iArr2, i11, jArr3, iArr3, jScaleLargeTimestamp);
                    }
                }
                jArr4 = track2.editListDurations;
                if (jArr4.length != 1 && jArr4[0] == 0) {
                    long j18 = track2.editListMediaTimes[0];
                    for (int i42 = 0; i42 < jArr3.length; i42++) {
                        jArr3[i42] = Util.scaleLargeTimestamp(jArr3[i42] - j18, 1000000L, track2.timescale);
                    }
                    return new TrackSampleTable(track, jArr2, iArr2, i11, jArr3, iArr3, Util.scaleLargeTimestamp(j10 - j18, 1000000L, track2.timescale));
                }
                if (track2.type == 1) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                i12 = 0;
                i13 = 0;
                z13 = false;
                i14 = 0;
                while (true) {
                    jArr5 = track2.editListDurations;
                    if (i14 < jArr5.length) {
                        break;
                    }
                    long[] jArr16 = jArr2;
                    int[] iArr13 = iArr2;
                    j13 = track2.editListMediaTimes[i14];
                    if (j13 != -1) {
                        long jScaleLargeTimestamp5 = Util.scaleLargeTimestamp(jArr5[i14], track2.timescale, track2.movieTimescale);
                        iBinarySearchCeil3 = Util.binarySearchCeil(jArr3, j13, true, true);
                        int iBinarySearchCeil4 = Util.binarySearchCeil(jArr3, j13 + jScaleLargeTimestamp5, z12, false);
                        i12 += iBinarySearchCeil4 - iBinarySearchCeil3;
                        if (i13 != iBinarySearchCeil3) {
                            z16 = true;
                        } else {
                            z16 = false;
                        }
                        i13 = iBinarySearchCeil4;
                        z13 = z16 | z13;
                    }
                    i14++;
                    jArr2 = jArr16;
                    iArr2 = iArr13;
                }
                jArr6 = jArr2;
                iArr4 = iArr2;
                if (i12 != sampleCount) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                z15 = z13 | z14;
                if (z15) {
                    jArr7 = new long[i12];
                } else {
                    jArr7 = jArr6;
                }
                if (z15) {
                    iArr5 = new int[i12];
                } else {
                    iArr5 = iArr4;
                }
                if (z15) {
                    i15 = 0;
                } else {
                    i15 = i11;
                }
                if (z15) {
                    iArr6 = new int[i12];
                } else {
                    iArr6 = iArr3;
                }
                jArr8 = new long[i12];
                i16 = 0;
                i17 = 0;
                while (true) {
                    jArr9 = track2.editListDurations;
                    if (i16 < jArr9.length) {
                        return new TrackSampleTable(track, jArr7, iArr5, i15, jArr8, iArr6, Util.scaleLargeTimestamp(j16, 1000000L, track2.timescale));
                    }
                    jArr10 = jArr6;
                    j11 = track2.editListMediaTimes[i16];
                    j12 = jArr9[i16];
                    if (j11 != -1) {
                        int i43 = i15;
                        iArr9 = iArr6;
                        long jScaleLargeTimestamp6 = Util.scaleLargeTimestamp(j12, track2.timescale, track2.movieTimescale) + j11;
                        iBinarySearchCeil = Util.binarySearchCeil(jArr3, j11, true, true);
                        iBinarySearchCeil2 = Util.binarySearchCeil(jArr3, jScaleLargeTimestamp6, z12, false);
                        if (z15) {
                            int i44 = iBinarySearchCeil2 - iBinarySearchCeil;
                            System.arraycopy(jArr10, iBinarySearchCeil, jArr7, i17, i44);
                            iArr7 = iArr4;
                            System.arraycopy(iArr7, iBinarySearchCeil, iArr5, i17, i44);
                            iArr8 = iArr9;
                            System.arraycopy(iArr3, iBinarySearchCeil, iArr8, i17, i44);
                        } else {
                            iArr7 = iArr4;
                            iArr8 = iArr9;
                        }
                        if (iBinarySearchCeil >= iBinarySearchCeil2 && (iArr8[i17] & 1) == 0) {
                            Log.w(str2, "Ignoring edit list: edit does not start with a sync sample.");
                            throw new UnhandledEditListException();
                        }
                        i18 = iBinarySearchCeil;
                        i19 = i17;
                        int i45 = i43;
                        while (i18 < iBinarySearchCeil2) {
                            int i46 = iBinarySearchCeil2;
                            String str4 = str2;
                            long j19 = j11;
                            jArr8[i19] = Util.scaleLargeTimestamp(j16, 1000000L, track2.movieTimescale) + Util.scaleLargeTimestamp(jArr3[i18] - j11, 1000000L, track2.timescale);
                            if (!z15 && iArr5[i19] > i45) {
                                i45 = iArr7[i18];
                            }
                            i19++;
                            i18++;
                            iBinarySearchCeil2 = i46;
                            j11 = j19;
                            str2 = str4;
                        }
                        str3 = str2;
                        i15 = i45;
                        i17 = i19;
                    } else {
                        str3 = str2;
                        iArr7 = iArr4;
                        jArr7 = jArr7;
                        iArr8 = iArr6;
                    }
                    j16 += j12;
                    i16++;
                    jArr6 = jArr10;
                    iArr6 = iArr8;
                    z12 = z12;
                    jArr7 = jArr7;
                    str2 = str3;
                    iArr4 = iArr7;
                }
            } else {
                str2 = str;
            }
            i11 = i10;
            jArr4 = track2.editListDurations;
            if (jArr4.length != 1) {
            }
            if (track2.type == 1) {
                z12 = true;
            } else {
                z12 = false;
            }
            i12 = 0;
            i13 = 0;
            z13 = false;
            i14 = 0;
            while (true) {
                jArr5 = track2.editListDurations;
                if (i14 < jArr5.length) {
                    break;
                    break;
                }
                long[] jArr17 = jArr2;
                int[] iArr14 = iArr2;
                j13 = track2.editListMediaTimes[i14];
                if (j13 != -1) {
                    long jScaleLargeTimestamp7 = Util.scaleLargeTimestamp(jArr5[i14], track2.timescale, track2.movieTimescale);
                    iBinarySearchCeil3 = Util.binarySearchCeil(jArr3, j13, true, true);
                    int iBinarySearchCeil5 = Util.binarySearchCeil(jArr3, j13 + jScaleLargeTimestamp7, z12, false);
                    i12 += iBinarySearchCeil5 - iBinarySearchCeil3;
                    if (i13 != iBinarySearchCeil3) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                    i13 = iBinarySearchCeil5;
                    z13 = z16 | z13;
                }
                i14++;
                jArr2 = jArr17;
                iArr2 = iArr14;
            }
            jArr6 = jArr2;
            iArr4 = iArr2;
            if (i12 != sampleCount) {
                z14 = true;
            } else {
                z14 = false;
            }
            z15 = z13 | z14;
            if (z15) {
                jArr7 = new long[i12];
            } else {
                jArr7 = jArr6;
            }
            if (z15) {
                iArr5 = new int[i12];
            } else {
                iArr5 = iArr4;
            }
            if (z15) {
                i15 = 0;
            } else {
                i15 = i11;
            }
            if (z15) {
                iArr6 = new int[i12];
            } else {
                iArr6 = iArr3;
            }
            jArr8 = new long[i12];
            i16 = 0;
            i17 = 0;
            while (true) {
                jArr9 = track2.editListDurations;
                if (i16 < jArr9.length) {
                    return new TrackSampleTable(track, jArr7, iArr5, i15, jArr8, iArr6, Util.scaleLargeTimestamp(j16, 1000000L, track2.timescale));
                }
                jArr10 = jArr6;
                j11 = track2.editListMediaTimes[i16];
                j12 = jArr9[i16];
                if (j11 != -1) {
                    int i47 = i15;
                    iArr9 = iArr6;
                    long jScaleLargeTimestamp8 = Util.scaleLargeTimestamp(j12, track2.timescale, track2.movieTimescale) + j11;
                    iBinarySearchCeil = Util.binarySearchCeil(jArr3, j11, true, true);
                    iBinarySearchCeil2 = Util.binarySearchCeil(jArr3, jScaleLargeTimestamp8, z12, false);
                    if (z15) {
                        int i48 = iBinarySearchCeil2 - iBinarySearchCeil;
                        System.arraycopy(jArr10, iBinarySearchCeil, jArr7, i17, i48);
                        iArr7 = iArr4;
                        System.arraycopy(iArr7, iBinarySearchCeil, iArr5, i17, i48);
                        iArr8 = iArr9;
                        System.arraycopy(iArr3, iBinarySearchCeil, iArr8, i17, i48);
                    } else {
                        iArr7 = iArr4;
                        iArr8 = iArr9;
                    }
                    if (iBinarySearchCeil >= iBinarySearchCeil2) {
                    }
                    i18 = iBinarySearchCeil;
                    i19 = i17;
                    int i49 = i47;
                    while (i18 < iBinarySearchCeil2) {
                        int i410 = iBinarySearchCeil2;
                        String str5 = str2;
                        long j110 = j11;
                        jArr8[i19] = Util.scaleLargeTimestamp(j16, 1000000L, track2.movieTimescale) + Util.scaleLargeTimestamp(jArr3[i18] - j11, 1000000L, track2.timescale);
                        if (!z15) {
                        }
                        i19++;
                        i18++;
                        iBinarySearchCeil2 = i410;
                        j11 = j110;
                        str2 = str5;
                    }
                    str3 = str2;
                    i15 = i49;
                    i17 = i19;
                } else {
                    str3 = str2;
                    iArr7 = iArr4;
                    jArr7 = jArr7;
                    iArr8 = iArr6;
                }
                j16 += j12;
                i16++;
                jArr6 = jArr10;
                iArr6 = iArr8;
                z12 = z12;
                jArr7 = jArr7;
                str2 = str3;
                iArr4 = iArr7;
            }
        } else {
            unsignedIntToInt2 = 0;
        }
        parsableByteArray4 = parsableByteArray5;
        if (!stz2SampleSizeBox.isFixedSampleSize()) {
            z11 = false;
        } else {
            z11 = false;
        }
        long j111 = 0;
        if (z11) {
            jArr11 = new long[sampleCount];
            iArr10 = new int[sampleCount];
            int i310 = unsignedIntToInt2;
            jArr12 = new long[sampleCount];
            iArr11 = new int[sampleCount];
            i20 = unsignedIntToInt8;
            j14 = 0;
            j15 = 0;
            i21 = unsignedIntToInt6;
            i22 = 0;
            i23 = 0;
            unsignedIntToInt3 = 0;
            i24 = 0;
            i25 = 0;
            i26 = i310;
            unsignedIntToInt4 = unsignedIntToInt9;
            i27 = unsignedIntToInt;
            i28 = unsignedIntToInt7;
            while (i22 < sampleCount) {
                while (i25 == 0) {
                    Assertions.checkState(chunkIterator.moveNext());
                    j15 = chunkIterator.offset;
                    i25 = chunkIterator.numSamples;
                    i21 = i21;
                    i28 = i28;
                }
                int i311 = i21;
                int i312 = i28;
                if (parsableByteArray6 != null) {
                    while (unsignedIntToInt3 == 0) {
                        unsignedIntToInt3 = parsableByteArray6.readUnsignedIntToInt();
                        i24 = parsableByteArray6.readInt();
                        i27--;
                    }
                    unsignedIntToInt3--;
                }
                int i313 = i24;
                jArr11[i22] = j15;
                nextSampleSize = stz2SampleSizeBox.readNextSampleSize();
                iArr10[i22] = nextSampleSize;
                if (nextSampleSize > i23) {
                    i23 = nextSampleSize;
                }
                jArr12[i22] = j14 + ((long) i313);
                if (parsableByteArray4 == null) {
                    i30 = 1;
                } else {
                    i30 = 0;
                }
                iArr11[i22] = i30;
                if (i22 == unsignedIntToInt4) {
                    iArr11[i22] = 1;
                    i26--;
                    if (i26 > 0) {
                        unsignedIntToInt4 = parsableByteArray4.readUnsignedIntToInt() - 1;
                    }
                }
                j14 += (long) i20;
                unsignedIntToInt5 = i312 - 1;
                if (unsignedIntToInt5 != 0) {
                }
                int i314 = unsignedIntToInt5;
                j15 += (long) iArr10[i22];
                i25--;
                i22++;
                stz2SampleSizeBox = stz2SampleSizeBox;
                jArr11 = jArr11;
                i28 = i314;
                i24 = i313;
                i21 = i311;
            }
            int i315 = i21;
            int i316 = i28;
            int i411 = i24;
            long[] jArr18 = jArr11;
            j10 = j14 + ((long) i411);
            if (unsignedIntToInt3 == 0) {
                z17 = true;
            } else {
                z17 = false;
            }
            Assertions.checkArgument(z17);
            while (i27 > 0) {
                if (parsableByteArray6.readUnsignedIntToInt() == 0) {
                    z18 = true;
                } else {
                    z18 = false;
                }
                Assertions.checkArgument(z18);
                parsableByteArray6.readInt();
                i27--;
            }
            if (i26 == 0) {
                i29 = i25;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Inconsistent stbl box for track ");
                track2 = track;
                sb3.append(track2.f35948id);
                sb3.append(": remainingSynchronizationSamples ");
                sb3.append(i26);
                sb3.append(", remainingSamplesAtTimestampDelta ");
                sb3.append(i316);
                sb3.append(", remainingSamplesInChunk ");
                sb3.append(i29);
                sb3.append(", remainingTimestampDeltaChanges ");
                sb3.append(i315);
                String string2 = sb3.toString();
                str = TAG;
                Log.w(str, string2);
            } else {
                i29 = i25;
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Inconsistent stbl box for track ");
                track2 = track;
                sb4.append(track2.f35948id);
                sb4.append(": remainingSynchronizationSamples ");
                sb4.append(i26);
                sb4.append(", remainingSamplesAtTimestampDelta ");
                sb4.append(i316);
                sb4.append(", remainingSamplesInChunk ");
                sb4.append(i29);
                sb4.append(", remainingTimestampDeltaChanges ");
                sb4.append(i315);
                String string3 = sb4.toString();
                str = TAG;
                Log.w(str, string3);
            }
            jArr3 = jArr12;
            iArr2 = iArr10;
            iArr3 = iArr11;
            i10 = i23;
            jArr2 = jArr18;
        } else {
            track2 = track;
            str = TAG;
            int i317 = chunkIterator.length;
            jArr = new long[i317];
            iArr = new int[i317];
            while (chunkIterator.moveNext()) {
                int i318 = chunkIterator.index;
                jArr[i318] = chunkIterator.offset;
                iArr[i318] = chunkIterator.numSamples;
            }
            Format format2 = track2.format;
            FixedSampleSizeRechunker.Results resultsRechunk2 = FixedSampleSizeRechunker.rechunk(Util.getPcmFrameSize(format2.pcmEncoding, format2.channelCount), jArr, iArr, unsignedIntToInt8);
            jArr2 = resultsRechunk2.offsets;
            iArr2 = resultsRechunk2.sizes;
            i10 = resultsRechunk2.maximumSize;
            jArr3 = resultsRechunk2.timestamps;
            iArr3 = resultsRechunk2.flags;
            j10 = resultsRechunk2.duration;
        }
        jScaleLargeTimestamp = Util.scaleLargeTimestamp(j10, 1000000L, track2.timescale);
        if (track2.editListDurations != null) {
        }
        long[] jArr19 = jArr2;
        int[] iArr15 = iArr2;
        int i412 = i10;
        Util.scaleLargeTimestampsInPlace(jArr3, 1000000L, track2.timescale);
        return new TrackSampleTable(track, jArr19, iArr15, i412, jArr3, iArr3, jScaleLargeTimestamp);
    }

    private static StsdData parseStsd(ParsableByteArray parsableByteArray, int i10, int i11, String str, DrmInitData drmInitData, boolean z10) throws ParserException {
        parsableByteArray.setPosition(12);
        int i12 = parsableByteArray.readInt();
        StsdData stsdData = new StsdData(i12);
        for (int i13 = 0; i13 < i12; i13++) {
            int position = parsableByteArray.getPosition();
            int i14 = parsableByteArray.readInt();
            Assertions.checkArgument(i14 > 0, "childAtomSize should be positive");
            int i15 = parsableByteArray.readInt();
            if (i15 == Atom.TYPE_avc1 || i15 == Atom.TYPE_avc3 || i15 == Atom.TYPE_encv || i15 == Atom.TYPE_mp4v || i15 == Atom.TYPE_hvc1 || i15 == Atom.TYPE_hev1 || i15 == Atom.TYPE_s263 || i15 == Atom.TYPE_vp08 || i15 == Atom.TYPE_vp09) {
                parseVideoSampleEntry(parsableByteArray, i15, position, i14, i10, i11, drmInitData, stsdData, i13);
            } else if (i15 == Atom.TYPE_mp4a || i15 == Atom.TYPE_enca || i15 == Atom.TYPE_ac_3 || i15 == Atom.TYPE_ec_3 || i15 == Atom.TYPE_dtsc || i15 == Atom.TYPE_dtse || i15 == Atom.TYPE_dtsh || i15 == Atom.TYPE_dtsl || i15 == Atom.TYPE_samr || i15 == Atom.TYPE_sawb || i15 == Atom.TYPE_lpcm || i15 == Atom.TYPE_sowt || i15 == Atom.TYPE__mp3 || i15 == Atom.TYPE_alac) {
                parseAudioSampleEntry(parsableByteArray, i15, position, i14, i10, str, z10, drmInitData, stsdData, i13);
            } else if (i15 == Atom.TYPE_TTML || i15 == Atom.TYPE_tx3g || i15 == Atom.TYPE_wvtt || i15 == Atom.TYPE_stpp || i15 == Atom.TYPE_c608) {
                parseTextSampleEntry(parsableByteArray, i15, position, i14, i10, str, stsdData);
            } else if (i15 == Atom.TYPE_camm) {
                stsdData.format = Format.createSampleFormat(Integer.toString(i10), MimeTypes.APPLICATION_CAMERA_MOTION, null, -1, null);
            }
            parsableByteArray.setPosition(position + i14);
        }
        return stsdData;
    }

    private static void parseTextSampleEntry(ParsableByteArray parsableByteArray, int i10, int i11, int i12, int i13, String str, StsdData stsdData) throws ParserException {
        parsableByteArray.setPosition(i11 + 16);
        int i14 = Atom.TYPE_TTML;
        String str2 = MimeTypes.APPLICATION_TTML;
        List listSingletonList = null;
        long j10 = Long.MAX_VALUE;
        if (i10 != i14) {
            if (i10 == Atom.TYPE_tx3g) {
                int i15 = i12 - 16;
                byte[] bArr = new byte[i15];
                parsableByteArray.readBytes(bArr, 0, i15);
                listSingletonList = Collections.singletonList(bArr);
                str2 = MimeTypes.APPLICATION_TX3G;
            } else if (i10 == Atom.TYPE_wvtt) {
                str2 = MimeTypes.APPLICATION_MP4VTT;
            } else if (i10 == Atom.TYPE_stpp) {
                j10 = 0;
            } else {
                if (i10 != Atom.TYPE_c608) {
                    throw new IllegalStateException();
                }
                stsdData.requiredSampleTransformation = 1;
                str2 = MimeTypes.APPLICATION_MP4CEA608;
            }
        }
        stsdData.format = Format.createTextSampleFormat(Integer.toString(i13), str2, null, -1, 0, str, -1, null, j10, listSingletonList);
    }

    private static TkhdData parseTkhd(ParsableByteArray parsableByteArray) {
        long j10;
        parsableByteArray.setPosition(8);
        int fullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(fullAtomVersion == 0 ? 8 : 16);
        int i10 = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int position = parsableByteArray.getPosition();
        int i11 = fullAtomVersion == 0 ? 4 : 8;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            j10 = C.TIME_UNSET;
            if (i13 >= i11) {
                parsableByteArray.skipBytes(i11);
                break;
            }
            if (parsableByteArray.data[position + i13] != -1) {
                long unsignedInt = fullAtomVersion == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
                if (unsignedInt == 0) {
                    break;
                }
                j10 = unsignedInt;
                break;
            }
            i13++;
        }
        parsableByteArray.skipBytes(16);
        int i14 = parsableByteArray.readInt();
        int i15 = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int i16 = parsableByteArray.readInt();
        int i17 = parsableByteArray.readInt();
        if (i14 == 0 && i15 == 65536 && i16 == -65536 && i17 == 0) {
            i12 = 90;
        } else if (i14 == 0 && i15 == -65536 && i16 == 65536 && i17 == 0) {
            i12 = 270;
        } else if (i14 == -65536 && i15 == 0 && i16 == 0 && i17 == -65536) {
            i12 = 180;
        }
        return new TkhdData(i10, j10, i12);
    }

    public static Track parseTrak(Atom.ContainerAtom containerAtom, Atom.LeafAtom leafAtom, long j10, DrmInitData drmInitData, boolean z10, boolean z11) throws ParserException {
        long[] jArr;
        long[] jArr2;
        Atom.ContainerAtom containerAtomOfType = containerAtom.getContainerAtomOfType(Atom.TYPE_mdia);
        int hdlr = parseHdlr(containerAtomOfType.getLeafAtomOfType(Atom.TYPE_hdlr).data);
        if (hdlr == -1) {
            return null;
        }
        TkhdData tkhd = parseTkhd(containerAtom.getLeafAtomOfType(Atom.TYPE_tkhd).data);
        long jScaleLargeTimestamp = C.TIME_UNSET;
        long j11 = j10 == C.TIME_UNSET ? tkhd.duration : j10;
        long mvhd = parseMvhd(leafAtom.data);
        if (j11 != C.TIME_UNSET) {
            jScaleLargeTimestamp = Util.scaleLargeTimestamp(j11, 1000000L, mvhd);
        }
        long j12 = jScaleLargeTimestamp;
        Atom.ContainerAtom containerAtomOfType2 = containerAtomOfType.getContainerAtomOfType(Atom.TYPE_minf).getContainerAtomOfType(Atom.TYPE_stbl);
        Pair<Long, String> mdhd = parseMdhd(containerAtomOfType.getLeafAtomOfType(Atom.TYPE_mdhd).data);
        StsdData stsd = parseStsd(containerAtomOfType2.getLeafAtomOfType(Atom.TYPE_stsd).data, tkhd.f35947id, tkhd.rotationDegrees, (String) mdhd.second, drmInitData, z11);
        if (z10) {
            jArr = null;
            jArr2 = null;
        } else {
            Pair<long[], long[]> edts = parseEdts(containerAtom.getContainerAtomOfType(Atom.TYPE_edts));
            long[] jArr3 = (long[]) edts.first;
            jArr2 = (long[]) edts.second;
            jArr = jArr3;
        }
        if (stsd.format == null) {
            return null;
        }
        return new Track(tkhd.f35947id, hdlr, ((Long) mdhd.first).longValue(), mvhd, j12, stsd.format, stsd.requiredSampleTransformation, stsd.trackEncryptionBoxes, stsd.nalUnitLengthFieldLength, jArr, jArr2);
    }

    public static Metadata parseUdta(Atom.LeafAtom leafAtom, boolean z10) {
        if (z10) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafAtom.data;
        parsableByteArray.setPosition(8);
        while (parsableByteArray.bytesLeft() >= 8) {
            int position = parsableByteArray.getPosition();
            int i10 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_meta) {
                parsableByteArray.setPosition(position);
                return parseMetaAtom(parsableByteArray, position + i10);
            }
            parsableByteArray.skipBytes(i10 - 8);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:78:0x013e A[PHI: r13
      0x013e: PHI (r13v2 int) = (r13v1 int), (r13v3 int) binds: [B:72:0x0133, B:74:0x0136] A[DONT_GENERATE, DONT_INLINE]] */
    private static void parseVideoSampleEntry(ParsableByteArray parsableByteArray, int i10, int i11, int i12, int i13, int i14, DrmInitData drmInitData, StsdData stsdData, int i15) throws ParserException {
        DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        parsableByteArray.setPosition(i11 + 16);
        parsableByteArray.skipBytes(16);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int unsignedShort2 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(50);
        int position = parsableByteArray.getPosition();
        String str = null;
        int iIntValue = i10;
        if (iIntValue == Atom.TYPE_encv) {
            Pair<Integer, TrackEncryptionBox> sampleEntryEncryptionData = parseSampleEntryEncryptionData(parsableByteArray, i11, i12);
            if (sampleEntryEncryptionData != null) {
                iIntValue = ((Integer) sampleEntryEncryptionData.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((TrackEncryptionBox) sampleEntryEncryptionData.second).schemeType);
                stsdData.trackEncryptionBoxes[i15] = (TrackEncryptionBox) sampleEntryEncryptionData.second;
            }
            parsableByteArray.setPosition(position);
        }
        DrmInitData drmInitData2 = drmInitDataCopyWithSchemeType;
        float paspFromParent = 1.0f;
        List<byte[]> listSingletonList = null;
        byte[] projFromParent = null;
        int i16 = -1;
        boolean z10 = false;
        while (position - i11 < i12) {
            parsableByteArray.setPosition(position);
            int position2 = parsableByteArray.getPosition();
            int i17 = parsableByteArray.readInt();
            if (i17 == 0 && parsableByteArray.getPosition() - i11 == i12) {
                break;
            }
            int i18 = 1;
            Assertions.checkArgument(i17 > 0, "childAtomSize should be positive");
            int i19 = parsableByteArray.readInt();
            if (i19 == Atom.TYPE_avcC) {
                Assertions.checkState(str == null);
                parsableByteArray.setPosition(position2 + 8);
                AvcConfig avcConfig = AvcConfig.parse(parsableByteArray);
                listSingletonList = avcConfig.initializationData;
                stsdData.nalUnitLengthFieldLength = avcConfig.nalUnitLengthFieldLength;
                if (!z10) {
                    paspFromParent = avcConfig.pixelWidthAspectRatio;
                }
                str = MimeTypes.VIDEO_H264;
            } else if (i19 == Atom.TYPE_hvcC) {
                Assertions.checkState(str == null);
                parsableByteArray.setPosition(position2 + 8);
                HevcConfig hevcConfig = HevcConfig.parse(parsableByteArray);
                listSingletonList = hevcConfig.initializationData;
                stsdData.nalUnitLengthFieldLength = hevcConfig.nalUnitLengthFieldLength;
                str = MimeTypes.VIDEO_H265;
            } else if (i19 == Atom.TYPE_vpcC) {
                Assertions.checkState(str == null);
                str = iIntValue == Atom.TYPE_vp08 ? MimeTypes.VIDEO_VP8 : MimeTypes.VIDEO_VP9;
            } else if (i19 == Atom.TYPE_d263) {
                Assertions.checkState(str == null);
                str = MimeTypes.VIDEO_H263;
            } else if (i19 == Atom.TYPE_esds) {
                Assertions.checkState(str == null);
                Pair<String, byte[]> esdsFromParent = parseEsdsFromParent(parsableByteArray, position2);
                str = (String) esdsFromParent.first;
                listSingletonList = Collections.singletonList((byte[]) esdsFromParent.second);
            } else if (i19 == Atom.TYPE_pasp) {
                paspFromParent = parsePaspFromParent(parsableByteArray, position2);
                z10 = true;
            } else if (i19 == Atom.TYPE_sv3d) {
                projFromParent = parseProjFromParent(parsableByteArray, position2, i17);
            } else if (i19 == Atom.TYPE_st3d) {
                int unsignedByte = parsableByteArray.readUnsignedByte();
                parsableByteArray.skipBytes(3);
                if (unsignedByte == 0) {
                    int unsignedByte2 = parsableByteArray.readUnsignedByte();
                    if (unsignedByte2 == 0) {
                        i16 = 0;
                    } else if (unsignedByte2 != 1) {
                        i18 = 2;
                        if (unsignedByte2 == 2) {
                            i16 = i18;
                        } else if (unsignedByte2 == 3) {
                            i16 = 3;
                        }
                    } else {
                        i16 = i18;
                    }
                }
            }
            position += i17;
        }
        if (str == null) {
            return;
        }
        stsdData.format = Format.createVideoSampleFormat(Integer.toString(i13), str, null, -1, -1, unsignedShort, unsignedShort2, -1.0f, listSingletonList, i14, paspFromParent, projFromParent, i16, null, drmInitData2);
    }
}
