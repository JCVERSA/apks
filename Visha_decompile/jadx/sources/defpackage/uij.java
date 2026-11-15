package defpackage;

import android.media.AudioTrack;

public final class uij extends AudioTrack.StreamEventCallback {
    public final vij a;

    public uij(vij vijVar) {
        this.a = vijVar;
    }

    @Override
    public final void onDataRequest(AudioTrack audioTrack, int i) {
        audioTrack.equals(this.a.c.p);
    }

    @Override
    public final void onPresentationEnded(AudioTrack audioTrack) {
        xij xijVar = this.a.c;
        if (audioTrack.equals(xijVar.p)) {
            xijVar.M = true;
        }
    }

    @Override
    public final void onTearDown(AudioTrack audioTrack) {
        audioTrack.equals(this.a.c.p);
    }
}
