package androidx.media3.exoplayer.source;

import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.source.chunk.Chunk;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import com.google.common.collect.Lists;
import defpackage.o74;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;

final class MergingMediaPeriod implements MediaPeriod, MediaPeriod.Callback {

    @Nullable
    private MediaPeriod.Callback callback;
    private SequenceableLoader compositeSequenceableLoader;
    private final CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    private final MediaPeriod[] periods;
    private final boolean[] periodsWithTimeOffsets;

    @Nullable
    private TrackGroupArray trackGroups;
    private final ArrayList<MediaPeriod> childrenPendingPreparation = new ArrayList<>();
    private final HashMap<TrackGroup, TrackGroup> childTrackGroupByMergedTrackGroup = new HashMap<>();
    private final IdentityHashMap<SampleStream, Integer> streamPeriodIndices = new IdentityHashMap<>();
    private MediaPeriod[] enabledPeriods = new MediaPeriod[0];

    public static final class ForwardingTrackSelection implements ExoTrackSelection {
        private final TrackGroup trackGroup;
        private final ExoTrackSelection trackSelection;

        public ForwardingTrackSelection(ExoTrackSelection exoTrackSelection, TrackGroup trackGroup) {
            this.trackSelection = exoTrackSelection;
            this.trackGroup = trackGroup;
        }

        @Override
        public void disable() {
            this.trackSelection.disable();
        }

        @Override
        public void enable() {
            this.trackSelection.enable();
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ForwardingTrackSelection)) {
                return false;
            }
            ForwardingTrackSelection forwardingTrackSelection = (ForwardingTrackSelection) obj;
            return this.trackSelection.equals(forwardingTrackSelection.trackSelection) && this.trackGroup.equals(forwardingTrackSelection.trackGroup);
        }

        @Override
        public int evaluateQueueSize(long j, List<? extends MediaChunk> list) {
            return this.trackSelection.evaluateQueueSize(j, list);
        }

        @Override
        public boolean excludeTrack(int i, long j) {
            return this.trackSelection.excludeTrack(i, j);
        }

        @Override
        public Format getFormat(int i) {
            return this.trackGroup.getFormat(this.trackSelection.getIndexInTrackGroup(i));
        }

        @Override
        public int getIndexInTrackGroup(int i) {
            return this.trackSelection.getIndexInTrackGroup(i);
        }

        @Override
        public long getLatestBitrateEstimate() {
            return this.trackSelection.getLatestBitrateEstimate();
        }

        @Override
        public Format getSelectedFormat() {
            return this.trackGroup.getFormat(this.trackSelection.getSelectedIndexInTrackGroup());
        }

        @Override
        public int getSelectedIndex() {
            return this.trackSelection.getSelectedIndex();
        }

        @Override
        public int getSelectedIndexInTrackGroup() {
            return this.trackSelection.getSelectedIndexInTrackGroup();
        }

        @Override
        @Nullable
        public Object getSelectionData() {
            return this.trackSelection.getSelectionData();
        }

        @Override
        public int getSelectionReason() {
            return this.trackSelection.getSelectionReason();
        }

        @Override
        public TrackGroup getTrackGroup() {
            return this.trackGroup;
        }

        @Override
        public int getType() {
            return this.trackSelection.getType();
        }

        public int hashCode() {
            return ((527 + this.trackGroup.hashCode()) * 31) + this.trackSelection.hashCode();
        }

        @Override
        public int indexOf(Format format) {
            return this.trackSelection.indexOf(this.trackGroup.indexOf(format));
        }

        @Override
        public boolean isTrackExcluded(int i, long j) {
            return this.trackSelection.isTrackExcluded(i, j);
        }

        @Override
        public int length() {
            return this.trackSelection.length();
        }

        @Override
        public void onDiscontinuity() {
            this.trackSelection.onDiscontinuity();
        }

        @Override
        public void onPlayWhenReadyChanged(boolean z) {
            this.trackSelection.onPlayWhenReadyChanged(z);
        }

        @Override
        public void onPlaybackSpeed(float f) {
            this.trackSelection.onPlaybackSpeed(f);
        }

        @Override
        public void onRebuffer() {
            this.trackSelection.onRebuffer();
        }

        @Override
        public boolean shouldCancelChunkLoad(long j, Chunk chunk, List<? extends MediaChunk> list) {
            return this.trackSelection.shouldCancelChunkLoad(j, chunk, list);
        }

        @Override
        public void updateSelectedTrack(long j, long j2, long j3, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
            this.trackSelection.updateSelectedTrack(j, j2, j3, list, mediaChunkIteratorArr);
        }

        @Override
        public int indexOf(int i) {
            return this.trackSelection.indexOf(i);
        }
    }

    public MergingMediaPeriod(CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, long[] jArr, MediaPeriod... mediaPeriodArr) {
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.periods = mediaPeriodArr;
        this.compositeSequenceableLoader = compositeSequenceableLoaderFactory.empty();
        this.periodsWithTimeOffsets = new boolean[mediaPeriodArr.length];
        for (int i = 0; i < mediaPeriodArr.length; i++) {
            long j = jArr[i];
            if (j != 0) {
                this.periodsWithTimeOffsets[i] = true;
                this.periods[i] = new TimeOffsetMediaPeriod(mediaPeriodArr[i], j);
            }
        }
    }

    public static List lambda$selectTracks$0(MediaPeriod mediaPeriod) {
        return mediaPeriod.getTrackGroups().getTrackTypes();
    }

    @Override
    public boolean continueLoading(LoadingInfo loadingInfo) {
        if (this.childrenPendingPreparation.isEmpty()) {
            return this.compositeSequenceableLoader.continueLoading(loadingInfo);
        }
        int size = this.childrenPendingPreparation.size();
        for (int i = 0; i < size; i++) {
            this.childrenPendingPreparation.get(i).continueLoading(loadingInfo);
        }
        return false;
    }

    @Override
    public void discardBuffer(long j, boolean z) {
        for (MediaPeriod mediaPeriod : this.enabledPeriods) {
            mediaPeriod.discardBuffer(j, z);
        }
    }

    @Override
    public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
        MediaPeriod[] mediaPeriodArr = this.enabledPeriods;
        return (mediaPeriodArr.length > 0 ? mediaPeriodArr[0] : this.periods[0]).getAdjustedSeekPositionUs(j, seekParameters);
    }

    @Override
    public long getBufferedPositionUs() {
        return this.compositeSequenceableLoader.getBufferedPositionUs();
    }

    public MediaPeriod getChildPeriod(int i) {
        return this.periodsWithTimeOffsets[i] ? ((TimeOffsetMediaPeriod) this.periods[i]).getWrappedMediaPeriod() : this.periods[i];
    }

    @Override
    public long getNextLoadPositionUs() {
        return this.compositeSequenceableLoader.getNextLoadPositionUs();
    }

    @Override
    public TrackGroupArray getTrackGroups() {
        return (TrackGroupArray) Assertions.checkNotNull(this.trackGroups);
    }

    @Override
    public boolean isLoading() {
        return this.compositeSequenceableLoader.isLoading();
    }

    @Override
    public void maybeThrowPrepareError() throws IOException {
        for (MediaPeriod mediaPeriod : this.periods) {
            mediaPeriod.maybeThrowPrepareError();
        }
    }

    @Override
    public void onPrepared(MediaPeriod mediaPeriod) {
        this.childrenPendingPreparation.remove(mediaPeriod);
        if (!this.childrenPendingPreparation.isEmpty()) {
            return;
        }
        int i = 0;
        for (MediaPeriod mediaPeriod2 : this.periods) {
            i += mediaPeriod2.getTrackGroups().length;
        }
        TrackGroup[] trackGroupArr = new TrackGroup[i];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            MediaPeriod[] mediaPeriodArr = this.periods;
            if (i2 >= mediaPeriodArr.length) {
                this.trackGroups = new TrackGroupArray(trackGroupArr);
                ((MediaPeriod.Callback) Assertions.checkNotNull(this.callback)).onPrepared(this);
                return;
            }
            TrackGroupArray trackGroups = mediaPeriodArr[i2].getTrackGroups();
            int i4 = trackGroups.length;
            int i5 = 0;
            while (i5 < i4) {
                TrackGroup trackGroup = trackGroups.get(i5);
                Format[] formatArr = new Format[trackGroup.length];
                for (int i6 = 0; i6 < trackGroup.length; i6++) {
                    Format format = trackGroup.getFormat(i6);
                    Format.Builder builderBuildUpon = format.buildUpon();
                    StringBuilder sb = new StringBuilder();
                    sb.append(i2);
                    sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
                    String str = format.id;
                    if (str == null) {
                        str = "";
                    }
                    sb.append(str);
                    formatArr[i6] = builderBuildUpon.setId(sb.toString()).build();
                }
                TrackGroup trackGroup2 = new TrackGroup(i2 + StringUtils.PROCESS_POSTFIX_DELIMITER + trackGroup.id, formatArr);
                this.childTrackGroupByMergedTrackGroup.put(trackGroup2, trackGroup);
                trackGroupArr[i3] = trackGroup2;
                i5++;
                i3++;
            }
            i2++;
        }
    }

    @Override
    public void prepare(MediaPeriod.Callback callback, long j) {
        this.callback = callback;
        Collections.addAll(this.childrenPendingPreparation, this.periods);
        for (MediaPeriod mediaPeriod : this.periods) {
            mediaPeriod.prepare(this, j);
        }
    }

    @Override
    public long readDiscontinuity() {
        long j = -9223372036854775807L;
        for (MediaPeriod mediaPeriod : this.enabledPeriods) {
            long discontinuity = mediaPeriod.readDiscontinuity();
            if (discontinuity == C.TIME_UNSET) {
                if (j != C.TIME_UNSET && mediaPeriod.seekToUs(j) != j) {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                }
            } else if (j == C.TIME_UNSET) {
                for (MediaPeriod mediaPeriod2 : this.enabledPeriods) {
                    if (mediaPeriod2 == mediaPeriod) {
                        break;
                    }
                    if (mediaPeriod2.seekToUs(discontinuity) != discontinuity) {
                        throw new IllegalStateException("Unexpected child seekToUs result.");
                    }
                }
                j = discontinuity;
            } else if (discontinuity != j) {
                throw new IllegalStateException("Conflicting discontinuities.");
            }
        }
        return j;
    }

    @Override
    public void reevaluateBuffer(long j) {
        this.compositeSequenceableLoader.reevaluateBuffer(j);
    }

    @Override
    public long seekToUs(long j) {
        long jSeekToUs = this.enabledPeriods[0].seekToUs(j);
        int i = 1;
        while (true) {
            MediaPeriod[] mediaPeriodArr = this.enabledPeriods;
            if (i >= mediaPeriodArr.length) {
                return jSeekToUs;
            }
            if (mediaPeriodArr[i].seekToUs(jSeekToUs) != jSeekToUs) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
            i++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
        Integer num;
        int[] iArr = new int[exoTrackSelectionArr.length];
        int[] iArr2 = new int[exoTrackSelectionArr.length];
        int i = 0;
        int i2 = 0;
        while (true) {
            num = null;
            if (i2 >= exoTrackSelectionArr.length) {
                break;
            }
            SampleStream sampleStream = sampleStreamArr[i2];
            num = sampleStream != null ? this.streamPeriodIndices.get(sampleStream) : null;
            iArr[i2] = num == null ? -1 : num.intValue();
            ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i2];
            if (exoTrackSelection != null) {
                String str = exoTrackSelection.getTrackGroup().id;
                iArr2[i2] = Integer.parseInt(str.substring(0, str.indexOf(StringUtils.PROCESS_POSTFIX_DELIMITER)));
            } else {
                iArr2[i2] = -1;
            }
            i2++;
        }
        this.streamPeriodIndices.clear();
        int length = exoTrackSelectionArr.length;
        SampleStream[] sampleStreamArr2 = new SampleStream[length];
        SampleStream[] sampleStreamArr3 = new SampleStream[exoTrackSelectionArr.length];
        Object[] objArr = new ExoTrackSelection[exoTrackSelectionArr.length];
        ArrayList arrayList = new ArrayList(this.periods.length);
        long j2 = j;
        int i3 = 0;
        while (i3 < this.periods.length) {
            for (int i4 = i; i4 < exoTrackSelectionArr.length; i4++) {
                sampleStreamArr3[i4] = iArr[i4] == i3 ? sampleStreamArr[i4] : num;
                if (iArr2[i4] == i3) {
                    ExoTrackSelection exoTrackSelection2 = (ExoTrackSelection) Assertions.checkNotNull(exoTrackSelectionArr[i4]);
                    objArr[i4] = new ForwardingTrackSelection(exoTrackSelection2, (TrackGroup) Assertions.checkNotNull(this.childTrackGroupByMergedTrackGroup.get(exoTrackSelection2.getTrackGroup())));
                } else {
                    objArr[i4] = num;
                }
            }
            int i5 = i3;
            ArrayList arrayList2 = arrayList;
            Object[] objArr2 = objArr;
            long jSelectTracks = this.periods[i3].selectTracks(objArr, zArr, sampleStreamArr3, zArr2, j2);
            if (i5 == 0) {
                j2 = jSelectTracks;
            } else if (jSelectTracks != j2) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z = false;
            for (int i6 = 0; i6 < exoTrackSelectionArr.length; i6++) {
                if (iArr2[i6] == i5) {
                    SampleStream sampleStream2 = (SampleStream) Assertions.checkNotNull(sampleStreamArr3[i6]);
                    sampleStreamArr2[i6] = sampleStreamArr3[i6];
                    this.streamPeriodIndices.put(sampleStream2, Integer.valueOf(i5));
                    z = true;
                } else if (iArr[i6] == i5) {
                    Assertions.checkState(sampleStreamArr3[i6] == 0);
                }
            }
            if (z) {
                arrayList2.add(this.periods[i5]);
            }
            i3 = i5 + 1;
            arrayList = arrayList2;
            objArr = objArr2;
            i = 0;
            num = null;
        }
        int i7 = i;
        ArrayList arrayList3 = arrayList;
        System.arraycopy(sampleStreamArr2, i7, sampleStreamArr, i7, length);
        this.enabledPeriods = (MediaPeriod[]) arrayList3.toArray(new MediaPeriod[i7]);
        this.compositeSequenceableLoader = this.compositeSequenceableLoaderFactory.create(arrayList3, Lists.o(arrayList3, new o74() {
            @Override
            public final Object apply(Object obj) {
                return MergingMediaPeriod.lambda$selectTracks$0((MediaPeriod) obj);
            }
        }));
        return j2;
    }

    @Override
    public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
        ((MediaPeriod.Callback) Assertions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
    }
}
