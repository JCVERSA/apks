package ii;

import android.app.Activity;
import com.transsion.audio.player.AudioPlayer;
import com.transsion.baselib.db.audio.AudioBean;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

public class c implements ep.b {

    private boolean f62093a;

    @Override
    public void a(WeakReference refer, AudioBean audioBean) {
        Intrinsics.h(refer, "refer");
        Intrinsics.h(audioBean, "audioBean");
        com.transsion.audio.view.d.k().d((Activity) refer.get(), audioBean);
        com.transsion.audio.view.d.k().f((Activity) refer.get());
    }

    @Override
    public void b() {
        com.transsion.audio.view.d.k().s();
    }

    @Override
    public void c() {
        AudioPlayer.a aVar = AudioPlayer.f41764i;
        if (aVar.a().J()) {
            aVar.a().G();
            this.f62093a = true;
        }
        hide();
    }

    @Override
    public void d(ep.b.a aVar) {
        com.transsion.audio.view.d.k().v(aVar);
    }

    @Override
    public void e() {
        if (this.f62093a) {
            AudioPlayer.f41764i.a().S();
            this.f62093a = false;
            show();
        }
    }

    @Override
    public void f(String name) {
        Intrinsics.h(name, "name");
        com.transsion.audio.view.d.k().x(name);
    }

    @Override
    public void g(WeakReference refer) {
        Intrinsics.h(refer, "refer");
        com.transsion.audio.view.d.k().f((Activity) refer.get());
    }

    @Override
    public void h() {
        com.transsion.audio.view.d.k().r();
    }

    @Override
    public void hide() {
        com.transsion.audio.view.d.k().w(8);
    }

    @Override
    public void i(WeakReference refer) {
        Intrinsics.h(refer, "refer");
        com.transsion.audio.view.d.k().h((Activity) refer.get());
    }

    @Override
    public void j(ep.b.a aVar) {
        com.transsion.audio.view.d.k().u(aVar);
    }

    @Override
    public void show() {
        com.transsion.audio.view.d.k().w(0);
    }
}
