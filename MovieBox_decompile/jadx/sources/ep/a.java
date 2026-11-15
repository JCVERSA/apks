package ep;

import com.transsion.baselib.db.audio.AudioBean;

public interface a {

    public static final class C0724a {
        public static void a(a aVar, AudioBean audioBean, boolean z10, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: start");
            }
            if ((i10 & 2) != 0) {
                z10 = true;
            }
            aVar.d(audioBean, z10);
        }
    }

    boolean a(String str);

    void addPlayerListener(com.transsion.player.orplayer.e eVar);

    boolean b(AudioBean audioBean);

    boolean c();

    void d(AudioBean audioBean, boolean z10);

    long e();

    boolean f();

    void pause();

    void prepare();

    void removePlayerListener(com.transsion.player.orplayer.e eVar);

    void seekTo(long j10);

    void start();

    void stop();
}
