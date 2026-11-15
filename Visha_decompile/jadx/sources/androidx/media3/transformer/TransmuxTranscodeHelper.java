package androidx.media3.transformer;

import android.content.Context;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import defpackage.im5;
import defpackage.mo0;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

final class TransmuxTranscodeHelper {

    public static final class ResumeMetadata {
        public final ImmutableList<Pair<Integer, Long>> firstMediaItemIndexAndOffsetInfo;
        public final long lastSyncSampleTimestampUs;

        @Nullable
        public final Format videoFormat;

        public ResumeMetadata(long j, ImmutableList<Pair<Integer, Long>> immutableList, @Nullable Format format) {
            this.lastSyncSampleTimestampUs = j;
            this.firstMediaItemIndexAndOffsetInfo = immutableList;
            this.videoFormat = format;
        }
    }

    private TransmuxTranscodeHelper() {
    }

    public static Composition buildUponComposition(Composition composition, boolean z, boolean z2, @Nullable ResumeMetadata resumeMetadata) {
        long jLongValue;
        int iIntValue;
        Composition.Builder builderBuildUpon = composition.buildUpon();
        ImmutableList<EditedMediaItemSequence> immutableList = composition.sequences;
        ArrayList arrayList = new ArrayList();
        ImmutableList<Pair<Integer, Long>> immutableList2 = resumeMetadata != null ? resumeMetadata.firstMediaItemIndexAndOffsetInfo : null;
        int i = 0;
        while (i < immutableList.size()) {
            EditedMediaItemSequence editedMediaItemSequence = immutableList.get(i);
            ImmutableList<EditedMediaItem> immutableList3 = editedMediaItemSequence.editedMediaItems;
            ArrayList arrayList2 = new ArrayList();
            if (immutableList2 != null) {
                iIntValue = ((Integer) immutableList2.get(i).first).intValue();
                jLongValue = ((Long) immutableList2.get(i).second).longValue();
            } else {
                jLongValue = 0;
                iIntValue = 0;
            }
            int i2 = iIntValue;
            while (i2 < immutableList3.size()) {
                EditedMediaItem editedMediaItem = immutableList3.get(i2);
                EditedMediaItem.Builder builderBuildUpon2 = editedMediaItem.buildUpon();
                if (i2 == iIntValue) {
                    builderBuildUpon2.setMediaItem(editedMediaItem.mediaItem.buildUpon().setClippingConfiguration(editedMediaItem.mediaItem.clippingConfiguration.buildUpon().setStartPositionMs(editedMediaItem.mediaItem.clippingConfiguration.startPositionMs + Util.usToMs(jLongValue)).build()).build());
                }
                if (z) {
                    builderBuildUpon2.setRemoveAudio(true);
                }
                if (z2) {
                    builderBuildUpon2.setRemoveVideo(true);
                }
                arrayList2.add(builderBuildUpon2.build());
                i2++;
                immutableList2 = immutableList2;
                builderBuildUpon = builderBuildUpon;
            }
            arrayList.add(new EditedMediaItemSequence.Builder(arrayList2).setIsLooping(editedMediaItemSequence.isLooping).build());
            i++;
            immutableList2 = immutableList2;
            builderBuildUpon = builderBuildUpon;
        }
        Composition.Builder builder = builderBuildUpon;
        builder.setSequences(arrayList);
        return builder.build();
    }

    public static Composition buildUponCompositionForTrimOptimization(Composition composition, long j, long j2, long j3, boolean z, boolean z2) {
        EditedMediaItem editedMediaItem = composition.sequences.get(0).editedMediaItems.get(0);
        return composition.buildUpon().setSequences(ImmutableList.of(new EditedMediaItemSequence.Builder(editedMediaItem.buildUpon().setMediaItem(editedMediaItem.mediaItem.buildUpon().setClippingConfiguration(new MediaItem.ClippingConfiguration.Builder().setStartPositionUs(j).setEndPositionUs(j2).setStartsAtKeyFrame(z).build()).build()).setDurationUs(j3).setEffects(z2 ? new Effects(editedMediaItem.effects.audioProcessors, ImmutableList.of()) : editedMediaItem.effects).build()).build())).build();
    }

    public static im5 copyFileAsync(final File file, final File file2) {
        final com.google.common.util.concurrent.g gVarO = com.google.common.util.concurrent.g.o();
        new Thread("TransmuxTranscodeHelper:CopyFile") {
            /* JADX WARN: Code duplicated, block: B:32:0x004e A[DONT_INVERT] */
            /* JADX WARN: Code duplicated, block: B:33:0x0050 A[Catch: IOException -> 0x0053, TRY_LEAVE, TryCatch #3 {IOException -> 0x0053, blocks: (B:31:0x004b, B:33:0x0050), top: B:39:0x004b }] */
            /* JADX WARN: Code duplicated, block: B:39:0x004b A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override
            public void run() throws Throwable {
                FileOutputStream fileOutputStream;
                Exception e;
                FileInputStream fileInputStream;
                if (gVarO.isCancelled()) {
                    return;
                }
                FileInputStream fileInputStream2 = null;
                try {
                    try {
                        fileInputStream = new FileInputStream(file);
                        try {
                            fileOutputStream = new FileOutputStream(file2);
                            try {
                                try {
                                    mo0.b(fileInputStream, fileOutputStream);
                                    gVarO.set(null);
                                    fileInputStream.close();
                                } catch (Exception e2) {
                                    e = e2;
                                    gVarO.setException(e);
                                    if (fileInputStream != null) {
                                        fileInputStream.close();
                                    }
                                    if (fileOutputStream == null) {
                                        return;
                                    }
                                }
                            } catch (Throwable th) {
                                th = th;
                                fileInputStream2 = fileInputStream;
                                if (fileInputStream2 != null) {
                                    try {
                                        fileInputStream2.close();
                                        if (fileOutputStream != null) {
                                            fileOutputStream.close();
                                        }
                                    } catch (IOException unused) {
                                        throw th;
                                    }
                                } else if (fileOutputStream != null) {
                                    fileOutputStream.close();
                                }
                                throw th;
                            }
                        } catch (Exception e3) {
                            fileOutputStream = null;
                            e = e3;
                        } catch (Throwable th2) {
                            th = th2;
                            fileOutputStream = null;
                            fileInputStream2 = fileInputStream;
                            if (fileInputStream2 != null) {
                                fileInputStream2.close();
                                if (fileOutputStream != null) {
                                    fileOutputStream.close();
                                }
                            } else if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            throw th;
                        }
                    } catch (IOException unused2) {
                        return;
                    }
                } catch (Exception e4) {
                    fileOutputStream = null;
                    e = e4;
                    fileInputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = null;
                    if (fileInputStream2 != null) {
                        fileInputStream2.close();
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                    } else if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                    throw th;
                }
                fileOutputStream.close();
            }
        }.start();
        return gVarO;
    }

    public static Composition createAudioTranscodeAndVideoTransmuxComposition(Composition composition, String str) {
        Composition compositionBuildUponComposition = buildUponComposition((Composition) Assertions.checkNotNull(composition), false, true, null);
        Composition.Builder builderBuildUpon = compositionBuildUponComposition.buildUpon();
        ArrayList arrayList = new ArrayList(compositionBuildUponComposition.sequences);
        arrayList.add(new EditedMediaItemSequence.Builder(new EditedMediaItem.Builder(new MediaItem.Builder().setUri(str).build()).build()).build());
        builderBuildUpon.setSequences(arrayList);
        builderBuildUpon.setTransmuxVideo(true);
        return builderBuildUpon.build();
    }

    public static Composition createVideoOnlyComposition(String str, long j) {
        return new Composition.Builder(new EditedMediaItemSequence.Builder(new EditedMediaItem.Builder(new MediaItem.Builder().setUri(str).setClippingConfiguration(new MediaItem.ClippingConfiguration.Builder().setEndPositionMs(Util.usToMs(j)).build()).build()).setRemoveAudio(true).build()).build(), new EditedMediaItemSequence[0]).build();
    }

    public static long getMediaItemDurationUs(Context context, MediaItem mediaItem) throws IOException {
        String string = ((MediaItem.LocalConfiguration) Assertions.checkNotNull(mediaItem.localConfiguration)).uri.toString();
        long jMsToUs = Util.msToUs(mediaItem.clippingConfiguration.startPositionMs);
        long j = mediaItem.clippingConfiguration.endPositionMs;
        return (j != Long.MIN_VALUE ? Util.msToUs(j) : Mp4Info.create(context, string).durationUs) - jMsToUs;
    }

    public static im5 getMp4Info(final Context context, final String str, final long j) {
        final com.google.common.util.concurrent.g gVarO = com.google.common.util.concurrent.g.o();
        new Thread("TransmuxTranscodeHelper:Mp4Info") {
            @Override
            public void run() {
                try {
                    gVarO.set(Mp4Info.create(context, str, j));
                } catch (Exception e) {
                    gVarO.setException(e);
                }
            }
        }.start();
        return gVarO;
    }

    public static im5 getResumeMetadataAsync(final Context context, final String str, final Composition composition) {
        final com.google.common.util.concurrent.g gVarO = com.google.common.util.concurrent.g.o();
        new Thread("TransmuxTranscodeHelper:ResumeMetadata") {
            @Override
            public void run() {
                try {
                    if (gVarO.isCancelled()) {
                        return;
                    }
                    Mp4Info mp4InfoCreate = Mp4Info.create(context, str);
                    long j = mp4InfoCreate.lastSyncSampleTimestampUs;
                    ImmutableList.a aVar = new ImmutableList.a();
                    if (j != C.TIME_UNSET) {
                        for (int i = 0; i < composition.sequences.size(); i++) {
                            ImmutableList<EditedMediaItem> immutableList = composition.sequences.get(i).editedMediaItems;
                            long j2 = j;
                            int i2 = 0;
                            while (true) {
                                if (i2 >= immutableList.size() || j2 <= 0) {
                                    j2 = 0;
                                    break;
                                }
                                long mediaItemDurationUs = TransmuxTranscodeHelper.getMediaItemDurationUs(context, immutableList.get(i2).mediaItem);
                                if (mediaItemDurationUs > j2) {
                                    break;
                                }
                                j2 -= mediaItemDurationUs;
                                i2++;
                            }
                            aVar.a(new Pair(Integer.valueOf(i2), Long.valueOf(j2)));
                        }
                    }
                    gVarO.set(new ResumeMetadata(j, aVar.e(), mp4InfoCreate.videoFormat));
                } catch (Exception e) {
                    gVarO.setException(e);
                }
            }
        }.start();
        return gVarO;
    }
}
