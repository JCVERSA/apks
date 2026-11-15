package com.transsion.playercommon.player;

import android.net.Uri;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.transsion.dbdata.database.AudioTrack;
import defpackage.jb8;
import java.util.ArrayList;
import java.util.List;

public interface b {

    public interface a {
        default void d(int i, int i2) {
        }

        default void e() {
        }

        default boolean onInfo(int i, int i2) {
            return false;
        }

        default void onLoadingOnlineVideo(boolean z, boolean z2) {
        }

        void onPlayerStateUpdate(int i);

        default void onShowError(int i, int i2) {
        }

        default void onSubtitleText(String str) {
        }

        default void onVideoSizeChanged(int i, int i2) {
        }
    }

    public interface InterfaceC0245b {
        void a(boolean z, boolean z2);

        void b(Uri uri);

        void c(boolean z);

        void d(String str, boolean z);
    }

    default List A() {
        return null;
    }

    default int B() {
        return -1;
    }

    default int C() {
        return -1;
    }

    default void D(int i) {
    }

    boolean E();

    boolean F();

    default boolean G(SurfaceView surfaceView) {
        return false;
    }

    void H(boolean z, int i);

    int I();

    float J();

    default void K(boolean z) {
    }

    default void L(SurfaceView surfaceView, boolean z) {
    }

    void M(int i);

    void N(boolean z);

    void O(SurfaceHolder surfaceHolder, boolean z);

    int P();

    void Q(boolean z);

    void R(jb8 jb8Var);

    int a();

    default int b() {
        return 0;
    }

    void c(boolean z);

    void d(boolean z);

    default void e(int i) {
    }

    default boolean f(boolean z) {
        return true;
    }

    void g();

    int getCurrentPosition();

    int getDuration();

    void h(boolean z);

    void i(boolean z);

    boolean isPlaying();

    default int j() {
        return -1;
    }

    default Object k(int i, Object obj) {
        return null;
    }

    void l(float f);

    default void m(long j) {
    }

    b n(a aVar);

    default void o(boolean z) {
    }

    default void p(boolean z) {
    }

    void pause(boolean z);

    void q(boolean z);

    default ArrayList r() {
        return new ArrayList();
    }

    void reset();

    default AudioTrack s() {
        return null;
    }

    void seekTo(int i);

    default void setFrom(String str) {
    }

    void setVolume(float f, float f2);

    void t(boolean z, boolean z2);

    void u(boolean z);

    default void v(int i) {
    }

    String w();

    default boolean x(int i) {
        return true;
    }

    default boolean y(String str, boolean z) {
        return false;
    }

    void z(boolean z, int i);
}
