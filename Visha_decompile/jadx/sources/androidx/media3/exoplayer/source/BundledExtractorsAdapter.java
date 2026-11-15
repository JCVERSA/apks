package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.DataReader;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.source.BundledExtractorsAdapter;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.mp3.Mp3Extractor;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import defpackage.o74;
import defpackage.r95;
import java.io.EOFException;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@UnstableApi
public final class BundledExtractorsAdapter implements ProgressiveMediaExtractor {

    @Nullable
    private Extractor extractor;

    @Nullable
    private ExtractorInput extractorInput;
    private final ExtractorsFactory extractorsFactory;

    public BundledExtractorsAdapter(ExtractorsFactory extractorsFactory) {
        this.extractorsFactory = extractorsFactory;
    }

    public static String lambda$init$0(Extractor extractor) {
        return extractor.getUnderlyingImplementation().getClass().getSimpleName();
    }

    @Override
    public void disableSeekingOnMp3Streams() {
        Extractor extractor = this.extractor;
        if (extractor == null) {
            return;
        }
        Extractor underlyingImplementation = extractor.getUnderlyingImplementation();
        if (underlyingImplementation instanceof Mp3Extractor) {
            ((Mp3Extractor) underlyingImplementation).disableSeeking();
        }
    }

    @Override
    public long getCurrentInputPosition() {
        ExtractorInput extractorInput = this.extractorInput;
        if (extractorInput != null) {
            return extractorInput.getPosition();
        }
        return -1L;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0052  */
    @Override
    public void init(DataReader dataReader, Uri uri, Map<String, List<String>> map, long j, long j2, ExtractorOutput extractorOutput) throws IOException {
        DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(dataReader, j, j2);
        this.extractorInput = defaultExtractorInput;
        if (this.extractor != null) {
            return;
        }
        Extractor[] extractorArrCreateExtractors = this.extractorsFactory.createExtractors(uri, map);
        ImmutableList.a aVarBuilderWithExpectedSize = ImmutableList.builderWithExpectedSize(extractorArrCreateExtractors.length);
        if (extractorArrCreateExtractors.length == 1) {
            this.extractor = extractorArrCreateExtractors[0];
        } else {
            for (Extractor extractor : extractorArrCreateExtractors) {
                try {
                    if (extractor.sniff(defaultExtractorInput)) {
                        this.extractor = extractor;
                        Assertions.checkState(true);
                        defaultExtractorInput.resetPeekPosition();
                        break;
                    } else {
                        aVarBuilderWithExpectedSize.l(extractor.getSniffFailureDetails());
                        boolean z = this.extractor != null || defaultExtractorInput.getPosition() == j;
                        Assertions.checkState(z);
                        defaultExtractorInput.resetPeekPosition();
                    }
                } catch (EOFException unused) {
                    if (this.extractor != null || defaultExtractorInput.getPosition() == j) {
                    }
                } catch (Throwable th) {
                    Assertions.checkState(this.extractor != null || defaultExtractorInput.getPosition() == j);
                    defaultExtractorInput.resetPeekPosition();
                    throw th;
                }
                Assertions.checkState(z);
                defaultExtractorInput.resetPeekPosition();
            }
            if (this.extractor == null) {
                throw new UnrecognizedInputFormatException("None of the available extractors (" + r95.h(", ").d(Lists.o(ImmutableList.copyOf(extractorArrCreateExtractors), new o74() {
                    @Override
                    public final Object apply(Object obj) {
                        return BundledExtractorsAdapter.lambda$init$0((Extractor) obj);
                    }
                })) + ") could read the stream.", (Uri) Assertions.checkNotNull(uri), aVarBuilderWithExpectedSize.e());
            }
        }
        this.extractor.init(extractorOutput);
    }

    @Override
    public int read(PositionHolder positionHolder) throws IOException {
        return ((Extractor) Assertions.checkNotNull(this.extractor)).read((ExtractorInput) Assertions.checkNotNull(this.extractorInput), positionHolder);
    }

    @Override
    public void release() {
        Extractor extractor = this.extractor;
        if (extractor != null) {
            extractor.release();
            this.extractor = null;
        }
        this.extractorInput = null;
    }

    @Override
    public void seek(long j, long j2) {
        ((Extractor) Assertions.checkNotNull(this.extractor)).seek(j, j2);
    }
}
