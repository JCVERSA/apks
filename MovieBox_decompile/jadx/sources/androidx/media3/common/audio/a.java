package androidx.media3.common.audio;

import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

public final class a {

    private final ImmutableList f9509a;

    private final List f9510b = new ArrayList();

    private ByteBuffer[] f9511c = new ByteBuffer[0];

    private AudioProcessor.a f9512d;

    private AudioProcessor.a f9513e;

    private boolean f9514f;

    public a(ImmutableList immutableList) {
        this.f9509a = immutableList;
        AudioProcessor.a aVar = AudioProcessor.a.f9504e;
        this.f9512d = aVar;
        this.f9513e = aVar;
        this.f9514f = false;
    }

    private int c() {
        return this.f9511c.length - 1;
    }

    private void g(ByteBuffer byteBuffer) {
        boolean z10;
        for (boolean z11 = true; z11; z11 = z10) {
            z10 = false;
            for (int i10 = 0; i10 <= c(); i10++) {
                if (!this.f9511c[i10].hasRemaining()) {
                    AudioProcessor audioProcessor = (AudioProcessor) this.f9510b.get(i10);
                    if (!audioProcessor.isEnded()) {
                        ByteBuffer byteBuffer2 = i10 > 0 ? this.f9511c[i10 - 1] : byteBuffer.hasRemaining() ? byteBuffer : AudioProcessor.f9503a;
                        long jRemaining = byteBuffer2.remaining();
                        audioProcessor.queueInput(byteBuffer2);
                        this.f9511c[i10] = audioProcessor.getOutput();
                        z10 |= jRemaining - ((long) byteBuffer2.remaining()) > 0 || this.f9511c[i10].hasRemaining();
                    } else if (!this.f9511c[i10].hasRemaining() && i10 < c()) {
                        ((AudioProcessor) this.f9510b.get(i10 + 1)).queueEndOfStream();
                    }
                }
            }
        }
    }

    public AudioProcessor.a a(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.equals(AudioProcessor.a.f9504e)) {
            throw new AudioProcessor.UnhandledAudioFormatException(aVar);
        }
        for (int i10 = 0; i10 < this.f9509a.size(); i10++) {
            AudioProcessor audioProcessor = (AudioProcessor) this.f9509a.get(i10);
            AudioProcessor.a aVarA = audioProcessor.a(aVar);
            if (audioProcessor.isActive()) {
                androidx.media3.common.util.a.g(!aVarA.equals(AudioProcessor.a.f9504e));
                aVar = aVarA;
            }
        }
        this.f9513e = aVar;
        return aVar;
    }

    public void b() {
        this.f9510b.clear();
        this.f9512d = this.f9513e;
        this.f9514f = false;
        for (int i10 = 0; i10 < this.f9509a.size(); i10++) {
            AudioProcessor audioProcessor = (AudioProcessor) this.f9509a.get(i10);
            audioProcessor.flush();
            if (audioProcessor.isActive()) {
                this.f9510b.add(audioProcessor);
            }
        }
        this.f9511c = new ByteBuffer[this.f9510b.size()];
        for (int i11 = 0; i11 <= c(); i11++) {
            this.f9511c[i11] = ((AudioProcessor) this.f9510b.get(i11)).getOutput();
        }
    }

    public ByteBuffer d() {
        if (!f()) {
            return AudioProcessor.f9503a;
        }
        ByteBuffer byteBuffer = this.f9511c[c()];
        if (byteBuffer.hasRemaining()) {
            return byteBuffer;
        }
        g(AudioProcessor.f9503a);
        return this.f9511c[c()];
    }

    public boolean e() {
        return this.f9514f && ((AudioProcessor) this.f9510b.get(c())).isEnded() && !this.f9511c[c()].hasRemaining();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f9509a.size() != aVar.f9509a.size()) {
            return false;
        }
        for (int i10 = 0; i10 < this.f9509a.size(); i10++) {
            if (this.f9509a.get(i10) != aVar.f9509a.get(i10)) {
                return false;
            }
        }
        return true;
    }

    public boolean f() {
        return !this.f9510b.isEmpty();
    }

    public void h() {
        if (!f() || this.f9514f) {
            return;
        }
        this.f9514f = true;
        ((AudioProcessor) this.f9510b.get(0)).queueEndOfStream();
    }

    public int hashCode() {
        return this.f9509a.hashCode();
    }

    public void i(ByteBuffer byteBuffer) {
        if (!f() || this.f9514f) {
            return;
        }
        g(byteBuffer);
    }

    public void j() {
        for (int i10 = 0; i10 < this.f9509a.size(); i10++) {
            AudioProcessor audioProcessor = (AudioProcessor) this.f9509a.get(i10);
            audioProcessor.flush();
            audioProcessor.reset();
        }
        this.f9511c = new ByteBuffer[0];
        AudioProcessor.a aVar = AudioProcessor.a.f9504e;
        this.f9512d = aVar;
        this.f9513e = aVar;
        this.f9514f = false;
    }
}
