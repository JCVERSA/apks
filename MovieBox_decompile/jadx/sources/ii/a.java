package ii;

import android.text.TextUtils;
import com.transsion.audio.player.AudioPlayer;
import com.transsion.audio.viewmodel.HistoryListManager;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.player.orplayer.e;
import kotlin.jvm.internal.Intrinsics;

public class a implements ep.a {
    @Override
    public boolean a(String audioUrl) {
        Intrinsics.h(audioUrl, "audioUrl");
        return AudioPlayer.f41764i.a().z(audioUrl);
    }

    @Override
    public void addPlayerListener(e listener) {
        Intrinsics.h(listener, "listener");
        AudioPlayer.f41764i.a().m(listener);
    }

    @Override
    public boolean b(AudioBean audio) {
        Intrinsics.h(audio, "audio");
        return AudioPlayer.f41764i.a().y(audio);
    }

    @Override
    public boolean c() {
        return AudioPlayer.f41764i.a().p();
    }

    @Override
    public void d(AudioBean audio, boolean z10) {
        Intrinsics.h(audio, "audio");
        AudioPlayer.a aVar = AudioPlayer.f41764i;
        AudioBean audioBeanT = aVar.a().t();
        if (TextUtils.equals(audioBeanT != null ? audioBeanT.getAudioUrl() : null, audio.getAudioUrl())) {
            if (aVar.a().J()) {
                return;
            }
            aVar.a().K();
            return;
        }
        HistoryListManager.a aVar2 = HistoryListManager.f41836e;
        aVar2.b().w(audio);
        aVar.a().L(audio);
        com.transsion.audio.view.d.k().t(audio);
        String subjectId = audio.getSubjectId();
        String str = subjectId == null ? "" : subjectId;
        String postId = audio.getPostId();
        String str2 = postId == null ? "" : postId;
        if (!z10 || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        HistoryListManager.t(aVar2.b(), str, str2, 0, 4, null);
    }

    @Override
    public long e() {
        return AudioPlayer.f41764i.a().s();
    }

    @Override
    public boolean f() {
        return AudioPlayer.f41764i.a().J();
    }

    @Override
    public void pause() {
        AudioPlayer.f41764i.a().G();
    }

    @Override
    public void prepare() {
        AudioPlayer.f41764i.a().K();
    }

    @Override
    public void removePlayerListener(e listener) {
        Intrinsics.h(listener, "listener");
        AudioPlayer.f41764i.a().O(listener);
    }

    @Override
    public void seekTo(long j10) {
        AudioPlayer.f41764i.a().P(j10);
    }

    @Override
    public void start() {
        AudioPlayer.f41764i.a().S();
    }

    @Override
    public void stop() {
        AudioPlayer.f41764i.a().T();
    }
}
