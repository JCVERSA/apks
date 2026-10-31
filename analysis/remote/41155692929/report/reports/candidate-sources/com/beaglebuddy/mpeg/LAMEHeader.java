package com.beaglebuddy.mpeg;

import com.beaglebuddy.exception.ParseException;
import com.beaglebuddy.mpeg.enums.GainOriginator;
import com.beaglebuddy.mpeg.enums.GainType;
import com.beaglebuddy.mpeg.enums.SourceFrequency;
import com.beaglebuddy.mpeg.enums.StereoMode;
import com.beaglebuddy.mpeg.enums.SurroundInfo;
import com.beaglebuddy.mpeg.enums.VBRMethod;
import com.beaglebuddy.mpeg.pojo.ReplayGain;
import com.beaglebuddy.mpeg.pojo.Version;
import com.beaglebuddy.util.Utility;
import java.io.IOException;
import java.io.InputStream;

public class LAMEHeader {
    private static final byte HEADER_ATH_TYPE_MASK = 15;
    private static final int HEADER_BITRATE_SIZE = 1;
    private static final int HEADER_CRC_SIZE = 2;
    private static final int HEADER_ENCODING_SIZE = 3;
    private static final int HEADER_FLAGS_SIZE = 1;
    private static final String HEADER_ID_LAME = "LAME";
    private static final int HEADER_ID_SIZE = 4;
    private static final int HEADER_LOWPASS_FILTER_FREQUENCY_SIZE = 1;
    public static final int HEADER_MAX_SIZE = 36;
    public static final int HEADER_MIN_SIZE = 20;
    private static final int HEADER_MP3_GAIN_SIZE = 1;
    private static final int HEADER_MUSIC_CRC_SIZE = 2;
    private static final int HEADER_MUSIC_LENGTH_SIZE = 4;
    private static final byte HEADER_NOISE_SHAPING_MASK = 3;
    private static final byte HEADER_NO_GAP_NEXT_MASK = 64;
    private static final byte HEADER_NO_GAP_PREV_MASK = -128;
    private static final int HEADER_PEAK_SIGNAL_AMPLITUDE_SIZE = 4;
    private static final byte HEADER_PRESET_MASK = 7;
    private static final int HEADER_PRESET_VALUE_SIZE = 2;
    private static final byte HEADER_PSYTUNE_MASK = 16;
    private static final int HEADER_REPLAY_GAIN_SIZE = 2;
    private static final byte HEADER_SAFE_JOINT_MASK = 32;
    private static final byte HEADER_SOURCE_SAMPLE_FREQUENCY_MASK = -64;
    private static final byte HEADER_STEREO_MODE_MASK = 28;
    private static final byte HEADER_SURROUND_SOUND_INFO_MASK = 56;
    private static final byte HEADER_UNWISE_MASK = 32;
    private static final int HEADER_VERSION_FLAG_SIZE = 1;
    private static final int HEADER_VERSION_SIZE = 4;
    private int athType;
    private ReplayGain audiophileReplayGain;
    private int bitrate;
    private byte[] buffer;
    private byte[] crc;
    private int encodingDelay;
    private int encodingPadding;
    private String id;
    private int lowpassFilterFrequency;
    private byte mp3Gain;
    private byte[] musicCRC;
    private int musicLength;
    private boolean nogapNext;
    private boolean nogapPrevious;
    private int noiseShaping;
    private float peakSignalAmplitude;
    private int preset;
    private boolean psytune;
    private ReplayGain radioReplayGain;
    private int revision;
    private boolean safejoint;
    private int size;
    private SourceFrequency sourceSampleFrequency;
    private StereoMode stereoMode;
    private SurroundInfo surroundInfo;
    private boolean unwise;
    private VBRMethod vbrMethod;
    private Version version;

    public LAMEHeader() {
        this.id = HEADER_ID_LAME;
        this.version = null;
        this.revision = 0;
        this.vbrMethod = null;
        this.lowpassFilterFrequency = 0;
        this.peakSignalAmplitude = 0.0f;
        this.radioReplayGain = null;
        this.audiophileReplayGain = null;
        this.athType = 0;
        this.psytune = false;
        this.safejoint = false;
        this.nogapNext = false;
        this.nogapPrevious = false;
        this.bitrate = 0;
        this.encodingDelay = 0;
        this.encodingPadding = 0;
        this.noiseShaping = 0;
        this.stereoMode = null;
        this.unwise = false;
        this.sourceSampleFrequency = null;
        this.mp3Gain = (byte) 0;
        this.surroundInfo = null;
        this.preset = 0;
        this.musicLength = 0;
        this.musicCRC = null;
        this.crc = null;
        this.size = 0;
        this.buffer = null;
    }

    public LAMEHeader(InputStream inputStream) throws ParseException, IOException {
        this.buffer = new byte[36];
        setId(inputStream);
        setVersion(readBytes(inputStream, 5));
        if (this.version.getMajor() < 3 || this.version.getMinor() < 90) {
            byte[] bytes = readBytes(inputStream, 11);
            byte[] bArr = this.buffer;
            byte[] bArr2 = {bArr[0], bArr[1], bArr[2], bArr[3], bArr[4], bArr[5], bArr[6], bArr[7], bArr[8]};
            byte[] bArr3 = new byte[20];
            this.buffer = bArr3;
            System.arraycopy(bArr2, 0, bArr3, 0, 9);
            System.arraycopy(bytes, 0, this.buffer, 9, bytes.length);
            return;
        }
        byte[] bytes2 = readBytes(inputStream, 1);
        setRevision((bytes2[0] & 240) >> 4);
        setVBRMethod(bytes2[0] & HEADER_ATH_TYPE_MASK);
        setLowpassFilterFrequency(readBytes(inputStream, 1));
        setPeakSignalAmplitude(readBytes(inputStream, 4));
        setReplayGains(readBytes(inputStream, 4));
        setFlags1(readBytes(inputStream, 1));
        setBitrate(readBytes(inputStream, 1));
        setEncoding(readBytes(inputStream, 3));
        setFlags2(readBytes(inputStream, 1));
        this.mp3Gain = readBytes(inputStream, 1)[0];
        setPreset(readBytes(inputStream, 2));
        setMusicLength(readBytes(inputStream, 4));
        this.musicCRC = readBytes(inputStream, 2);
        this.crc = readBytes(inputStream, 2);
    }

    public LAMEHeader(byte[] bArr, int i) throws ParseException {
        try {
            String str = new String(bArr, i, 4);
            this.id = str;
            if (!str.equals(HEADER_ID_LAME)) {
                throw new ParseException("Invalid id, " + this.id + ", in LAME header.  It must be " + HEADER_ID_LAME + ".", bArr);
            }
            this.size = 4;
            byte[] bArr2 = new byte[5];
            System.arraycopy(bArr, i + 4, bArr2, 0, 5);
            setVersion(bArr2);
            this.size += 5;
            if (this.version.getMajor() < 3 || this.version.getMinor() < 90) {
                byte[] bArr3 = new byte[20];
                this.buffer = bArr3;
                System.arraycopy(bArr, i, bArr3, 0, bArr3.length);
                this.size = this.buffer.length;
            } else {
                byte[] bArr4 = new byte[1];
                System.arraycopy(bArr, this.size + i, bArr4, 0, 1);
                setRevision((bArr4[0] & 240) >> 4);
                setVBRMethod(bArr4[0] & HEADER_ATH_TYPE_MASK);
                int i2 = this.size + 1;
                this.size = i2;
                byte[] bArr5 = new byte[1];
                System.arraycopy(bArr, i2 + i, bArr5, 0, 1);
                setLowpassFilterFrequency(bArr5);
                int i3 = this.size + 1;
                this.size = i3;
                byte[] bArr6 = new byte[4];
                System.arraycopy(bArr, i3 + i, bArr6, 0, 4);
                setPeakSignalAmplitude(bArr6);
                int i4 = this.size + 4;
                this.size = i4;
                byte[] bArr7 = new byte[4];
                System.arraycopy(bArr, i4 + i, bArr7, 0, 4);
                setReplayGains(bArr7);
                int i5 = this.size + 4;
                this.size = i5;
                byte[] bArr8 = new byte[1];
                System.arraycopy(bArr, i5 + i, bArr8, 0, 1);
                setFlags1(bArr8);
                int i6 = this.size + 1;
                this.size = i6;
                byte[] bArr9 = new byte[1];
                System.arraycopy(bArr, i6 + i, bArr9, 0, 1);
                setBitrate(bArr9);
                int i7 = this.size + 1;
                this.size = i7;
                byte[] bArr10 = new byte[3];
                System.arraycopy(bArr, i7 + i, bArr10, 0, 3);
                setEncoding(bArr10);
                int i8 = this.size + 3;
                this.size = i8;
                byte[] bArr11 = new byte[1];
                System.arraycopy(bArr, i8 + i, bArr11, 0, 1);
                setFlags2(bArr11);
                int i9 = this.size;
                int i10 = i9 + 1;
                this.size = i10;
                this.mp3Gain = bArr[i10 + i];
                int i11 = i9 + 2;
                this.size = i11;
                byte[] bArr12 = new byte[2];
                System.arraycopy(bArr, i11 + i, bArr12, 0, 2);
                setPreset(bArr12);
                int i12 = this.size + 2;
                this.size = i12;
                byte[] bArr13 = new byte[4];
                System.arraycopy(bArr, i12 + i, bArr13, 0, 4);
                setMusicLength(bArr13);
                int i13 = this.size + 4;
                this.size = i13;
                byte[] bArr14 = new byte[2];
                this.musicCRC = bArr14;
                System.arraycopy(bArr, i13 + i, bArr14, 0, bArr14.length);
                int length = this.size + this.musicCRC.length;
                this.size = length;
                byte[] bArr15 = new byte[2];
                this.crc = bArr15;
                System.arraycopy(bArr, length + i, bArr15, 0, bArr15.length);
                this.size += this.crc.length;
            }
            int i14 = this.size;
            byte[] bArr16 = new byte[i14];
            this.buffer = bArr16;
            System.arraycopy(bArr, i, bArr16, 0, i14);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ParseException("Insufficient bytes to parse the LAME header.");
        }
    }

    private byte[] readBytes(InputStream inputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        if (inputStream.read(bArr) != i) {
            throw new IOException("Unable to read the LAME header from the mpeg audio frame in the mp3 file.");
        }
        System.arraycopy(bArr, 0, this.buffer, this.size, i);
        this.size += i;
        return bArr;
    }

    private void setBitrate(byte[] bArr) {
        this.bitrate = bArr[0] & 255;
    }

    private void setEncoding(byte[] bArr) {
        byte b = bArr[0];
        int i = ((b & 240) << 4) + ((b & HEADER_ATH_TYPE_MASK) << 4);
        byte b2 = bArr[1];
        this.encodingDelay = i + ((b2 & 240) >> 4);
        this.encodingPadding = ((b2 & HEADER_ATH_TYPE_MASK) << 8) + bArr[2];
    }

    private void setFlags1(byte[] bArr) {
        byte b = bArr[0];
        this.athType = b & HEADER_ATH_TYPE_MASK;
        this.psytune = (b & HEADER_PSYTUNE_MASK) != 0;
        this.safejoint = (b & 32) != 0;
        this.nogapNext = (b & HEADER_NO_GAP_NEXT_MASK) != 0;
        this.nogapPrevious = (b & HEADER_NO_GAP_PREV_MASK) != 0;
    }

    private void setFlags2(byte[] bArr) throws ParseException {
        byte b = bArr[0];
        this.noiseShaping = b & HEADER_NOISE_SHAPING_MASK;
        this.unwise = (b & 32) != 0;
        try {
            this.stereoMode = StereoMode.valueOf((b & HEADER_STEREO_MODE_MASK) >> 2);
            try {
                this.sourceSampleFrequency = SourceFrequency.valueOf((bArr[0] & HEADER_SOURCE_SAMPLE_FREQUENCY_MASK) >> 6);
            } catch (IllegalArgumentException e) {
                throw new ParseException(e.getMessage());
            }
        } catch (IllegalArgumentException e2) {
            throw new ParseException(e2.getMessage());
        }
    }

    private void setId(InputStream inputStream) throws ParseException, IOException {
        String str = new String(readBytes(inputStream, 4));
        this.id = str;
        if (str.equals(HEADER_ID_LAME)) {
            return;
        }
        throw new ParseException("Invalid id, " + this.id + ", in LAME header.  It must be " + HEADER_ID_LAME + ".", new byte[this.size]);
    }

    private void setLowpassFilterFrequency(byte[] bArr) {
        this.lowpassFilterFrequency = (bArr[0] & 255) * 100;
    }

    private void setMusicLength(byte[] bArr) {
        this.musicLength = Utility.bytesToInt(bArr);
    }

    private void setPeakSignalAmplitude(byte[] bArr) {
        this.peakSignalAmplitude = Float.intBitsToFloat(Utility.bytesToInt(bArr));
    }

    private void setPreset(byte[] bArr) throws ParseException {
        try {
            this.surroundInfo = SurroundInfo.valueOf((bArr[0] & HEADER_SURROUND_SOUND_INFO_MASK) >> 3);
            bArr[0] = (byte) (bArr[0] & HEADER_PRESET_MASK);
            this.preset = Utility.bytesToShort(bArr);
        } catch (IllegalArgumentException e) {
            throw new ParseException(e.getMessage());
        }
    }

    private void setReplayGains(byte[] bArr) throws ParseException {
        try {
            int i = 0;
            GainType gainTypeValueOf = GainType.valueOf((bArr[0] & 208) >> 5);
            GainOriginator gainOriginatorValueOf = GainOriginator.valueOf((bArr[0] & HEADER_STEREO_MODE_MASK) >> 2);
            byte b = bArr[0];
            this.radioReplayGain = new ReplayGain(gainTypeValueOf, gainOriginatorValueOf, (b & 2) != 0, (b & 1) == 0 ? 0 : bArr[1] + 256);
            GainType gainTypeValueOf2 = GainType.valueOf((bArr[2] & 208) >> 5);
            GainOriginator gainOriginatorValueOf2 = GainOriginator.valueOf((bArr[2] & HEADER_STEREO_MODE_MASK) >> 2);
            boolean z = (bArr[0] & 2) != 0;
            if ((bArr[2] & 1) != 0) {
                i = bArr[3] + 256;
            }
            this.audiophileReplayGain = new ReplayGain(gainTypeValueOf2, gainOriginatorValueOf2, z, i);
        } catch (IllegalArgumentException e) {
            throw new ParseException(e.getMessage());
        }
    }

    private void setRevision(int i) throws ParseException {
        if (i != 15) {
            this.revision = i;
            return;
        }
        throw new ParseException("Invalid revision, " + i + ", in LAME header.", new byte[this.size]);
    }

    private void setVBRMethod(int i) throws ParseException {
        try {
            VBRMethod vBRMethodValueOf = VBRMethod.valueOf(i);
            this.vbrMethod = vBRMethodValueOf;
            if (vBRMethodValueOf != VBRMethod.RESERVED) {
                return;
            }
            throw new ParseException("Invalid VBR encoding method, " + this.vbrMethod + ", in LAME header.", new byte[this.size]);
        } catch (IllegalArgumentException e) {
            throw new ParseException(e.getMessage(), new byte[this.size]);
        }
    }

    private void setVersion(byte[] bArr) throws ParseException {
        int i;
        int i2 = 0;
        String str = new String(bArr, 0, 4);
        int i3 = bArr[0] - 48;
        try {
            if (str.matches("\\d\\.\\d\\d")) {
                i = Integer.parseInt(new String(new byte[]{bArr[2], bArr[3]}));
            } else {
                if (!str.matches("\\d\\d\\d\\d")) {
                    throw new ParseException("Invalid version, " + new String(bArr) + ", found in the LAME header.");
                }
                i = Integer.parseInt(new String(new byte[]{bArr[1], bArr[2], bArr[3]}));
            }
            i2 = i;
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        this.version = new Version(i3, i2, (char) bArr[4]);
    }

    public int getAthType() {
        return this.athType;
    }

    public ReplayGain getAudiophileReplayGain() {
        return this.audiophileReplayGain;
    }

    public int getBitrate() {
        return this.bitrate;
    }

    public byte[] getCRC() {
        return this.crc;
    }

    public int getEncodingDelay() {
        return this.encodingDelay;
    }

    public int getEncodingPadding() {
        return this.encodingPadding;
    }

    public String getId() {
        return this.id;
    }

    public int getLowpassFilterFrequency() {
        return this.lowpassFilterFrequency;
    }

    public byte getMp3Gain() {
        return this.mp3Gain;
    }

    public byte[] getMusicCRC() {
        return this.musicCRC;
    }

    public int getMusicLength() {
        return this.musicLength;
    }

    public int getNoiseShaping() {
        return this.noiseShaping;
    }

    public float getPeakSignalAmplitude() {
        return this.peakSignalAmplitude;
    }

    public int getPreset() {
        return this.preset;
    }

    public ReplayGain getRadioReplayGain() {
        return this.radioReplayGain;
    }

    public int getRevision() {
        return this.revision;
    }

    public int getSize() {
        return this.size;
    }

    public SourceFrequency getSourceSampleFrequency() {
        return this.sourceSampleFrequency;
    }

    public StereoMode getStereoMode() {
        return this.stereoMode;
    }

    public SurroundInfo getSurroundInfo() {
        return this.surroundInfo;
    }

    public VBRMethod getVBRMethod() {
        return this.vbrMethod;
    }

    public Version getVersion() {
        return this.version;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("LAME header\n");
        stringBuffer.append("   size..........................: " + this.size + " bytes\n");
        stringBuffer.append("   bytes.........................: " + Utility.hex(this.buffer, 35) + "\n");
        stringBuffer.append("   id............................: " + this.id + "\n");
        stringBuffer.append("   version.......................: " + this.version + "\n");
        stringBuffer.append("   revision......................: " + this.revision + "\n");
        stringBuffer.append("   vbr version...................: " + this.vbrMethod + "\n");
        stringBuffer.append("   low pass filter freq..........: " + this.lowpassFilterFrequency + " hz\n");
        stringBuffer.append("   peak signal amplitude.........: " + this.peakSignalAmplitude + "\n");
        stringBuffer.append("   radio      replay gain........: " + this.radioReplayGain + "\n");
        stringBuffer.append("   audiophile replay gain........: " + this.audiophileReplayGain + "\n");
        stringBuffer.append("   ATH type......................: " + this.athType + "\n");
        stringBuffer.append("   encoded using psytune.........: " + this.psytune + "\n");
        stringBuffer.append("   encoded using safejoint.......: " + this.safejoint + "\n");
        stringBuffer.append("   no gap continues to next track: " + this.nogapNext + "\n");
        stringBuffer.append("   no gap continues to prev track: " + this.nogapPrevious + "\n");
        VBRMethod vBRMethod = this.vbrMethod;
        if (vBRMethod == VBRMethod.CBR || vBRMethod == VBRMethod.CBR_2_PASS) {
            stringBuffer.append("   constant bit rate.............: ");
        } else if (vBRMethod == VBRMethod.ABR || vBRMethod == VBRMethod.ABR_2_PASS) {
            stringBuffer.append("   average bit rate..............: ");
        } else {
            stringBuffer.append("   minimal variable bit rate.....: ");
        }
        stringBuffer.append(this.bitrate + "\n");
        stringBuffer.append("   encoding delay................: " + this.encodingDelay + " samples\n");
        stringBuffer.append("   encoding padding..............: " + this.encodingPadding + " samples\n");
        stringBuffer.append("   noise shaping.................: " + this.noiseShaping + "\n");
        stringBuffer.append("   stereo mode...................: " + this.stereoMode + "\n");
        stringBuffer.append("   unwise settings used..........: " + this.unwise + "\n");
        stringBuffer.append("   source sample frequency.......: " + this.sourceSampleFrequency + "\n");
        stringBuffer.append("   mp3 gain......................: " + Utility.hex(this.mp3Gain) + "\n");
        stringBuffer.append("   surround info.................: " + this.surroundInfo + "\n");
        stringBuffer.append("   preset........................: " + this.preset + "\n");
        stringBuffer.append("   music length..................: " + this.musicLength + " bytes\n");
        stringBuffer.append("   music CRC.....................: " + Utility.hex(this.musicCRC) + "\n");
        StringBuilder sb = new StringBuilder();
        sb.append("   CRC of first 190 bytes........: ");
        sb.append(Utility.hex(this.crc));
        stringBuffer.append(sb.toString());
        return stringBuffer.toString();
    }

    public boolean usedNoGapNext() {
        return this.nogapNext;
    }

    public boolean usedNoGapPrevious() {
        return this.nogapPrevious;
    }

    public boolean usedPsytune() {
        return this.psytune;
    }

    public boolean usedSafejoint() {
        return this.safejoint;
    }

    public boolean usedUnwise() {
        return this.unwise;
    }
}
