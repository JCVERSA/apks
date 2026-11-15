package com.mbridge.msdk.video.signal.communication;

import android.os.Handler;
import android.os.Looper;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;

public class VideoCommunication extends BaseVideoCommunication {

    public static final int f38696j = 0;

    private Handler f38697i = new Handler(Looper.getMainLooper());

    class a implements Runnable {

        final Object f38698a;

        final String f38699b;

        a(Object obj, String str) {
            this.f38698a = obj;
            this.f38699b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.progressBarOperate(this.f38698a, this.f38699b);
        }
    }

    class a0 implements Runnable {

        final Object f38701a;

        final String f38702b;

        a0(Object obj, String str) {
            this.f38701a = obj;
            this.f38702b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.setViewRect(this.f38701a, this.f38702b);
        }
    }

    class a1 implements Runnable {

        final Object f38704a;

        final String f38705b;

        a1(Object obj, String str) {
            this.f38704a = obj;
            this.f38705b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.playerUpdateFrame(this.f38704a, this.f38705b);
        }
    }

    class a2 implements Runnable {

        final Object f38707a;

        final String f38708b;

        a2(Object obj, String str) {
            this.f38707a = obj;
            this.f38708b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.getRewardUnitSetting(this.f38707a, this.f38708b);
        }
    }

    class b implements Runnable {

        final Object f38710a;

        final String f38711b;

        b(Object obj, String str) {
            this.f38710a = obj;
            this.f38711b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.getCurrentProgress(this.f38710a, this.f38711b);
        }
    }

    class b0 implements Runnable {

        final Object f38713a;

        final String f38714b;

        b0(Object obj, String str) {
            this.f38713a = obj;
            this.f38714b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.removeFromSuperView(this.f38713a, this.f38714b);
        }
    }

    class b1 implements Runnable {

        final Object f38716a;

        final String f38717b;

        b1(Object obj, String str) {
            this.f38716a = obj;
            this.f38717b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.playerMute(this.f38716a, this.f38717b);
        }
    }

    class b2 implements Runnable {

        final Object f38719a;

        final String f38720b;

        b2(Object obj, String str) {
            this.f38719a = obj;
            this.f38720b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.getUnitSetting(this.f38719a, this.f38720b);
        }
    }

    class c implements Runnable {

        final Object f38722a;

        final String f38723b;

        c(Object obj, String str) {
            this.f38722a = obj;
            this.f38723b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.showVideoClickView(this.f38722a, this.f38723b);
        }
    }

    class c0 implements Runnable {

        final Object f38725a;

        final String f38726b;

        c0(Object obj, String str) {
            this.f38725a = obj;
            this.f38726b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.appendSubView(this.f38725a, this.f38726b);
        }
    }

    class c1 implements Runnable {

        final Object f38728a;

        final String f38729b;

        c1(Object obj, String str) {
            this.f38728a = obj;
            this.f38729b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.showVideoLocation(this.f38728a, this.f38729b);
        }
    }

    class c2 implements Runnable {

        final Object f38731a;

        final String f38732b;

        c2(Object obj, String str) {
            this.f38731a = obj;
            this.f38732b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.getEncryptPrice(this.f38731a, this.f38732b);
        }
    }

    class d implements Runnable {

        final Object f38734a;

        final String f38735b;

        d(Object obj, String str) {
            this.f38734a = obj;
            this.f38735b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.setScaleFitXY(this.f38734a, this.f38735b);
        }
    }

    class d0 implements Runnable {

        final Object f38737a;

        final String f38738b;

        d0(Object obj, String str) {
            this.f38737a = obj;
            this.f38738b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.appendViewTo(this.f38737a, this.f38738b);
        }
    }

    class d1 implements Runnable {

        final Object f38740a;

        final String f38741b;

        d1(Object obj, String str) {
            this.f38740a = obj;
            this.f38741b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.playerUnmute(this.f38740a, this.f38741b);
        }
    }

    class d2 implements Runnable {

        final Object f38743a;

        final String f38744b;

        d2(Object obj, String str) {
            this.f38743a = obj;
            this.f38744b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.closeVideoOperte(this.f38743a, this.f38744b);
        }
    }

    class e implements Runnable {

        final Object f38746a;

        final String f38747b;

        e(Object obj, String str) {
            this.f38746a = obj;
            this.f38747b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.notifyCloseBtn(this.f38746a, this.f38747b);
        }
    }

    class e0 implements Runnable {

        final Object f38749a;

        final String f38750b;

        e0(Object obj, String str) {
            this.f38749a = obj;
            this.f38750b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.onlyAppendSubView(this.f38749a, this.f38750b);
        }
    }

    class e1 implements Runnable {

        final Object f38752a;

        final String f38753b;

        e1(Object obj, String str) {
            this.f38752a = obj;
            this.f38753b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.playerGetMuteState(this.f38752a, this.f38753b);
        }
    }

    class e2 implements Runnable {

        final Object f38755a;

        final String f38756b;

        e2(Object obj, String str) {
            this.f38755a = obj;
            this.f38756b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.progressOperate(this.f38755a, this.f38756b);
        }
    }

    class f implements Runnable {

        final Object f38758a;

        final String f38759b;

        f(Object obj, String str) {
            this.f38758a = obj;
            this.f38759b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.toggleCloseBtn(this.f38758a, this.f38759b);
        }
    }

    class f0 implements Runnable {

        final Object f38761a;

        final String f38762b;

        f0(Object obj, String str) {
            this.f38761a = obj;
            this.f38762b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.onlyAppendViewTo(this.f38761a, this.f38762b);
        }
    }

    class f1 implements Runnable {

        final Object f38764a;

        final String f38765b;

        f1(Object obj, String str) {
            this.f38764a = obj;
            this.f38765b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.playerSetSource(this.f38764a, this.f38765b);
        }
    }

    class g implements Runnable {

        final Object f38767a;

        final String f38768b;

        g(Object obj, String str) {
            this.f38767a = obj;
            this.f38768b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.handlerH5Exception(this.f38767a, this.f38768b);
        }
    }

    class g0 implements Runnable {

        final Object f38770a;

        final String f38771b;

        g0(Object obj, String str) {
            this.f38770a = obj;
            this.f38771b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.statistics(this.f38770a, this.f38771b);
        }
    }

    class g1 implements Runnable {

        final Object f38773a;

        final String f38774b;

        g1(Object obj, String str) {
            this.f38773a = obj;
            this.f38774b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.playerSetRenderType(this.f38773a, this.f38774b);
        }
    }

    class h implements Runnable {

        final Object f38776a;

        final String f38777b;

        h(Object obj, String str) {
            this.f38776a = obj;
            this.f38777b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.isSystemResume(this.f38776a, this.f38777b);
        }
    }

    class h0 implements Runnable {

        final Object f38779a;

        final String f38780b;

        h0(Object obj, String str) {
            this.f38779a = obj;
            this.f38780b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.bringViewToFront(this.f38779a, this.f38780b);
        }
    }

    class h1 implements Runnable {

        final Object f38782a;

        final String f38783b;

        h1(Object obj, String str) {
            this.f38782a = obj;
            this.f38783b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.preloadSubPlayTemplateView(this.f38782a, this.f38783b);
        }
    }

    class i implements Runnable {

        final Object f38785a;

        final String f38786b;

        i(Object obj, String str) {
            this.f38785a = obj;
            this.f38786b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.readyStatus(this.f38785a, this.f38786b);
        }
    }

    class i0 implements Runnable {

        final Object f38788a;

        final String f38789b;

        i0(Object obj, String str) {
            this.f38788a = obj;
            this.f38789b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.hideView(this.f38788a, this.f38789b);
        }
    }

    class i1 implements Runnable {

        final Object f38791a;

        final String f38792b;

        i1(Object obj, String str) {
            this.f38791a = obj;
            this.f38792b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.closeAd(this.f38791a, this.f38792b);
        }
    }

    class j implements Runnable {

        final Object f38794a;

        final String f38795b;

        j(Object obj, String str) {
            this.f38794a = obj;
            this.f38795b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.playVideoFinishOperate(this.f38794a, this.f38795b);
        }
    }

    class j0 implements Runnable {

        final Object f38797a;

        final String f38798b;

        j0(Object obj, String str) {
            this.f38797a = obj;
            this.f38798b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.showView(this.f38797a, this.f38798b);
        }
    }

    class j1 implements Runnable {

        final Object f38800a;

        final String f38801b;

        j1(Object obj, String str) {
            this.f38800a = obj;
            this.f38801b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.broadcast(this.f38800a, this.f38801b);
        }
    }

    class k implements Runnable {

        final Object f38803a;

        final String f38804b;

        k(Object obj, String str) {
            this.f38803a = obj;
            this.f38804b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.init(this.f38803a, this.f38804b);
        }
    }

    class k0 implements Runnable {

        final Object f38806a;

        final String f38807b;

        k0(Object obj, String str) {
            this.f38806a = obj;
            this.f38807b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.setViewBgColor(this.f38806a, this.f38807b);
        }
    }

    class k1 implements Runnable {

        final Object f38809a;

        final String f38810b;

        k1(Object obj, String str) {
            this.f38809a = obj;
            this.f38810b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.ivRewardAdsWithoutVideo(this.f38809a, this.f38810b);
        }
    }

    class l implements Runnable {

        final Object f38812a;

        final String f38813b;

        l(Object obj, String str) {
            this.f38812a = obj;
            this.f38813b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.openURL(this.f38812a, this.f38813b);
        }
    }

    class l0 implements Runnable {

        final Object f38815a;

        final String f38816b;

        l0(Object obj, String str) {
            this.f38815a = obj;
            this.f38816b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.setViewAlpha(this.f38815a, this.f38816b);
        }
    }

    class l1 implements Runnable {

        final Object f38818a;

        final String f38819b;

        l1(Object obj, String str) {
            this.f38818a = obj;
            this.f38819b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.setSubPlayTemplateInfo(this.f38818a, this.f38819b);
        }
    }

    class m implements Runnable {

        final Object f38821a;

        final String f38822b;

        m(Object obj, String str) {
            this.f38821a = obj;
            this.f38822b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.showAlertView(this.f38821a, this.f38822b);
        }
    }

    class m0 implements Runnable {

        final Object f38824a;

        final String f38825b;

        m0(Object obj, String str) {
            this.f38824a = obj;
            this.f38825b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.setViewScale(this.f38824a, this.f38825b);
        }
    }

    class m1 implements Runnable {

        final Object f38827a;

        final String f38828b;

        m1(Object obj, String str) {
            this.f38827a = obj;
            this.f38828b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.webviewFireEvent(this.f38827a, this.f38828b);
        }
    }

    class n implements Runnable {

        final Object f38830a;

        final String f38831b;

        n(Object obj, String str) {
            this.f38830a = obj;
            this.f38831b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.closeWeb(this.f38830a, this.f38831b);
        }
    }

    class n0 implements Runnable {

        final Object f38833a;

        final String f38834b;

        n0(Object obj, String str) {
            this.f38833a = obj;
            this.f38834b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.insertViewAbove(this.f38833a, this.f38834b);
        }
    }

    class n1 implements Runnable {

        final Object f38836a;

        final String f38837b;

        n1(Object obj, String str) {
            this.f38836a = obj;
            this.f38837b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.soundOperate(this.f38836a, this.f38837b);
        }
    }

    class o implements Runnable {

        final Object f38839a;

        final String f38840b;

        o(Object obj, String str) {
            this.f38839a = obj;
            this.f38840b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.getSDKInfo(this.f38839a, this.f38840b);
        }
    }

    class o0 implements Runnable {

        final Object f38842a;

        final String f38843b;

        o0(Object obj, String str) {
            this.f38842a = obj;
            this.f38843b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.insertViewBelow(this.f38842a, this.f38843b);
        }
    }

    class o1 implements Runnable {

        final Object f38845a;

        final String f38846b;

        o1(Object obj, String str) {
            this.f38845a = obj;
            this.f38846b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.increaseOfferFrequence(this.f38845a, this.f38846b);
        }
    }

    class p implements Runnable {

        final Object f38848a;

        final String f38849b;

        p(Object obj, String str) {
            this.f38848a = obj;
            this.f38849b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.getFileInfo(this.f38848a, this.f38849b);
        }
    }

    class p0 implements Runnable {

        final Object f38851a;

        final String f38852b;

        p0(Object obj, String str) {
            this.f38851a = obj;
            this.f38852b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.onlyInsertViewAbove(this.f38851a, this.f38852b);
        }
    }

    class p1 implements Runnable {

        final Object f38854a;

        final String f38855b;

        p1(Object obj, String str) {
            this.f38854a = obj;
            this.f38855b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.handleNativeObject(this.f38854a, this.f38855b);
        }
    }

    class q implements Runnable {

        final Object f38857a;

        final String f38858b;

        q(Object obj, String str) {
            this.f38857a = obj;
            this.f38858b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.loadads(this.f38857a, this.f38858b);
        }
    }

    class q0 implements Runnable {

        final Object f38860a;

        final String f38861b;

        q0(Object obj, String str) {
            this.f38860a = obj;
            this.f38861b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.onlyInsertViewBelow(this.f38860a, this.f38861b);
        }
    }

    class q1 implements Runnable {

        final Object f38863a;

        final String f38864b;

        q1(Object obj, String str) {
            this.f38863a = obj;
            this.f38864b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.loadingResourceStatus(this.f38863a, this.f38864b);
        }
    }

    class r implements Runnable {

        final Object f38866a;

        final String f38867b;

        r(Object obj, String str) {
            this.f38866a = obj;
            this.f38867b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.reactDeveloper(this.f38866a, this.f38867b);
        }
    }

    class r0 implements Runnable {

        final Object f38869a;

        final String f38870b;

        r0(Object obj, String str) {
            this.f38869a = obj;
            this.f38870b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.triggerCloseBtn(this.f38869a, this.f38870b);
        }
    }

    class r1 implements Runnable {

        final Object f38872a;

        final String f38873b;

        r1(Object obj, String str) {
            this.f38872a = obj;
            this.f38873b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.createNativeEC(this.f38872a, this.f38873b);
        }
    }

    class s implements Runnable {

        final Object f38875a;

        final String f38876b;

        s(Object obj, String str) {
            this.f38875a = obj;
            this.f38876b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.reportUrls(this.f38875a, this.f38876b);
        }
    }

    class s0 implements Runnable {

        final Object f38878a;

        final String f38879b;

        s0(Object obj, String str) {
            this.f38878a = obj;
            this.f38879b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.webviewLoad(this.f38878a, this.f38879b);
        }
    }

    class s1 implements Runnable {

        final Object f38881a;

        final String f38882b;

        s1(Object obj, String str) {
            this.f38881a = obj;
            this.f38882b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.setCacheItem(this.f38881a, this.f38882b);
        }
    }

    class t implements Runnable {

        final Object f38884a;

        final String f38885b;

        t(Object obj, String str) {
            this.f38884a = obj;
            this.f38885b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.createWebview(this.f38884a, this.f38885b);
        }
    }

    class t0 implements Runnable {

        final Object f38887a;

        final String f38888b;

        t0(Object obj, String str) {
            this.f38887a = obj;
            this.f38888b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.webviewReload(this.f38887a, this.f38888b);
        }
    }

    class t1 implements Runnable {

        final Object f38890a;

        final String f38891b;

        t1(Object obj, String str) {
            this.f38890a = obj;
            this.f38891b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.removeCacheItem(this.f38890a, this.f38891b);
        }
    }

    class u implements Runnable {

        final Object f38893a;

        final String f38894b;

        u(Object obj, String str) {
            this.f38893a = obj;
            this.f38894b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.createView(this.f38893a, this.f38894b);
        }
    }

    class u0 implements Runnable {

        final Object f38896a;

        final String f38897b;

        u0(Object obj, String str) {
            this.f38896a = obj;
            this.f38897b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.webviewGoBack(this.f38896a, this.f38897b);
        }
    }

    class u1 implements Runnable {

        final Object f38899a;

        final String f38900b;

        u1(Object obj, String str) {
            this.f38899a = obj;
            this.f38900b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.getAllCache(this.f38899a, this.f38900b);
        }
    }

    class v implements Runnable {

        final Object f38902a;

        final String f38903b;

        v(Object obj, String str) {
            this.f38902a = obj;
            this.f38903b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.click(this.f38902a, this.f38903b);
        }
    }

    class v0 implements Runnable {

        final Object f38905a;

        final String f38906b;

        v0(Object obj, String str) {
            this.f38905a = obj;
            this.f38906b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.webviewGoForward(this.f38905a, this.f38906b);
        }
    }

    class v1 implements Runnable {

        final Object f38908a;

        final String f38909b;

        v1(Object obj, String str) {
            this.f38908a = obj;
            this.f38909b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.clearAllCache(this.f38908a, this.f38909b);
        }
    }

    class w implements Runnable {

        final Object f38911a;

        final String f38912b;

        w(Object obj, String str) {
            this.f38911a = obj;
            this.f38912b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.createPlayerView(this.f38911a, this.f38912b);
        }
    }

    class w0 implements Runnable {

        final Object f38914a;

        final String f38915b;

        w0(Object obj, String str) {
            this.f38914a = obj;
            this.f38915b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.playerPlay(this.f38914a, this.f38915b);
        }
    }

    class w1 implements Runnable {

        final Object f38917a;

        final String f38918b;

        w1(Object obj, String str) {
            this.f38917a = obj;
            this.f38918b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.getCutout(this.f38917a, this.f38918b);
        }
    }

    class x implements Runnable {

        final Object f38920a;

        final String f38921b;

        x(Object obj, String str) {
            this.f38920a = obj;
            this.f38921b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.createSubPlayTemplateView(this.f38920a, this.f38921b);
        }
    }

    class x0 implements Runnable {

        final Object f38923a;

        final String f38924b;

        x0(Object obj, String str) {
            this.f38923a = obj;
            this.f38924b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.playerPause(this.f38923a, this.f38924b);
        }
    }

    class x1 implements Runnable {

        final Object f38926a;

        final String f38927b;

        x1(Object obj, String str) {
            this.f38926a = obj;
            this.f38927b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.getAppSetting(this.f38926a, this.f38927b);
        }
    }

    class y implements Runnable {

        final Object f38929a;

        final String f38930b;

        y(Object obj, String str) {
            this.f38929a = obj;
            this.f38930b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.destroyComponent(this.f38929a, this.f38930b);
        }
    }

    class y0 implements Runnable {

        final Object f38932a;

        final String f38933b;

        y0(Object obj, String str) {
            this.f38932a = obj;
            this.f38933b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.playerResume(this.f38932a, this.f38933b);
        }
    }

    class y1 implements Runnable {

        final Object f38935a;

        final String f38936b;

        y1(Object obj, String str) {
            this.f38935a = obj;
            this.f38936b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.videoOperate(this.f38935a, this.f38936b);
        }
    }

    class z implements Runnable {

        final Object f38938a;

        final String f38939b;

        z(Object obj, String str) {
            this.f38938a = obj;
            this.f38939b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.getComponentOptions(this.f38938a, this.f38939b);
        }
    }

    class z0 implements Runnable {

        final Object f38941a;

        final String f38942b;

        z0(Object obj, String str) {
            this.f38941a = obj;
            this.f38942b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.playerStop(this.f38941a, this.f38942b);
        }
    }

    class z1 implements Runnable {

        final Object f38944a;

        final String f38945b;

        z1(Object obj, String str) {
            this.f38944a = obj;
            this.f38945b = str;
        }

        @Override
        public void run() {
            VideoCommunication.super.getRewardSetting(this.f38944a, this.f38945b);
        }
    }

    @Override
    public void appendSubView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.appendSubView(obj, str);
        } else {
            this.f38697i.post(new c0(obj, str));
        }
    }

    @Override
    public void appendViewTo(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.appendViewTo(obj, str);
        } else {
            this.f38697i.post(new d0(obj, str));
        }
    }

    @Override
    public void bringViewToFront(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.bringViewToFront(obj, str);
        } else {
            this.f38697i.post(new h0(obj, str));
        }
    }

    @Override
    public void broadcast(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.broadcast(obj, str);
        } else {
            this.f38697i.post(new j1(obj, str));
        }
    }

    @Override
    public void clearAllCache(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.clearAllCache(obj, str);
        } else {
            this.f38697i.post(new v1(obj, str));
        }
    }

    @Override
    public void click(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.click(obj, str);
        } else {
            this.f38697i.post(new v(obj, str));
        }
    }

    @Override
    public void closeAd(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.closeAd(obj, str);
        } else {
            this.f38697i.post(new i1(obj, str));
        }
    }

    @Override
    public void closeVideoOperte(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.closeVideoOperte(obj, str);
        } else {
            this.f38697i.post(new d2(obj, str));
        }
    }

    @Override
    public void closeWeb(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.closeWeb(obj, str);
            return;
        }
        this.f38697i.post(new n(obj, str));
        com.mbridge.msdk.foundation.tools.o0.b("JS-Video-Brigde", NativeComponentConstants.KEY_COMPONENT_TYPE + str);
    }

    @Override
    public void createNativeEC(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.createNativeEC(obj, str);
        } else {
            this.f38697i.post(new r1(obj, str));
        }
    }

    @Override
    public void createPlayerView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.createPlayerView(obj, str);
        } else {
            this.f38697i.post(new w(obj, str));
        }
    }

    @Override
    public void createSubPlayTemplateView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.createSubPlayTemplateView(obj, str);
        } else {
            this.f38697i.post(new x(obj, str));
        }
    }

    @Override
    public void createView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.createView(obj, str);
        } else {
            this.f38697i.post(new u(obj, str));
        }
    }

    @Override
    public void createWebview(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.createWebview(obj, str);
        } else {
            this.f38697i.post(new t(obj, str));
        }
    }

    @Override
    public void destroyComponent(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.destroyComponent(obj, str);
        } else {
            this.f38697i.post(new y(obj, str));
        }
    }

    @Override
    public void getAllCache(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getAllCache(obj, str);
        } else {
            this.f38697i.post(new u1(obj, str));
        }
    }

    @Override
    public void getAppSetting(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getAppSetting(obj, str);
        } else {
            this.f38697i.post(new x1(obj, str));
        }
    }

    @Override
    public void getComponentOptions(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getComponentOptions(obj, str);
        } else {
            this.f38697i.post(new z(obj, str));
        }
    }

    @Override
    public void getCurrentProgress(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getCurrentProgress(obj, str);
        } else {
            this.f38697i.post(new b(obj, str));
        }
    }

    @Override
    public void getCutout(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getCutout(obj, str);
        } else {
            this.f38697i.post(new w1(obj, str));
        }
    }

    @Override
    public void getEncryptPrice(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getEncryptPrice(obj, str);
        } else {
            this.f38697i.post(new c2(obj, str));
        }
    }

    @Override
    public void getFileInfo(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getFileInfo(obj, str);
        } else {
            this.f38697i.post(new p(obj, str));
        }
    }

    @Override
    public void getRewardSetting(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getRewardSetting(obj, str);
        } else {
            this.f38697i.post(new z1(obj, str));
        }
    }

    @Override
    public void getRewardUnitSetting(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getRewardUnitSetting(obj, str);
        } else {
            this.f38697i.post(new a2(obj, str));
        }
    }

    @Override
    public void getSDKInfo(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getSDKInfo(obj, str);
        } else {
            this.f38697i.post(new o(obj, str));
        }
    }

    @Override
    public void getUnitSetting(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getUnitSetting(obj, str);
        } else {
            this.f38697i.post(new b2(obj, str));
        }
    }

    @Override
    public void handleNativeObject(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.handleNativeObject(obj, str);
        } else {
            this.f38697i.post(new p1(obj, str));
        }
    }

    @Override
    public void handlerH5Exception(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.handlerH5Exception(obj, str);
        } else {
            this.f38697i.post(new g(obj, str));
        }
    }

    @Override
    public void hideView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.hideView(obj, str);
        } else {
            this.f38697i.post(new i0(obj, str));
        }
    }

    @Override
    public void increaseOfferFrequence(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.increaseOfferFrequence(obj, str);
        } else {
            this.f38697i.post(new o1(obj, str));
        }
    }

    @Override
    public void init(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.init(obj, str);
        } else {
            this.f38697i.post(new k(obj, str));
        }
    }

    @Override
    public void insertViewAbove(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.insertViewAbove(obj, str);
        } else {
            this.f38697i.post(new n0(obj, str));
        }
    }

    @Override
    public void insertViewBelow(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.insertViewBelow(obj, str);
        } else {
            this.f38697i.post(new o0(obj, str));
        }
    }

    @Override
    public void isSystemResume(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.isSystemResume(obj, str);
        } else {
            this.f38697i.post(new h(obj, str));
        }
    }

    @Override
    public void ivRewardAdsWithoutVideo(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.ivRewardAdsWithoutVideo(obj, str);
        } else {
            this.f38697i.post(new k1(obj, str));
        }
    }

    @Override
    public void loadads(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.loadads(obj, str);
        } else {
            this.f38697i.post(new q(obj, str));
        }
    }

    @Override
    public void loadingResourceStatus(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.loadingResourceStatus(obj, str);
        } else {
            this.f38697i.post(new q1(obj, str));
        }
    }

    @Override
    public void notifyCloseBtn(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.notifyCloseBtn(obj, str);
        } else {
            this.f38697i.post(new e(obj, str));
        }
    }

    @Override
    public void onlyAppendSubView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.onlyAppendSubView(obj, str);
        } else {
            this.f38697i.post(new e0(obj, str));
        }
    }

    @Override
    public void onlyAppendViewTo(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.onlyAppendViewTo(obj, str);
        } else {
            this.f38697i.post(new f0(obj, str));
        }
    }

    @Override
    public void onlyInsertViewAbove(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.onlyInsertViewAbove(obj, str);
        } else {
            this.f38697i.post(new p0(obj, str));
        }
    }

    @Override
    public void onlyInsertViewBelow(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.onlyInsertViewBelow(obj, str);
        } else {
            this.f38697i.post(new q0(obj, str));
        }
    }

    @Override
    public void openURL(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.openURL(obj, str);
        } else {
            this.f38697i.post(new l(obj, str));
        }
    }

    @Override
    public void playVideoFinishOperate(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playVideoFinishOperate(obj, str);
        } else {
            this.f38697i.post(new j(obj, str));
        }
    }

    @Override
    public void playerGetMuteState(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerGetMuteState(obj, str);
        } else {
            this.f38697i.post(new e1(obj, str));
        }
    }

    @Override
    public void playerMute(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerMute(obj, str);
        } else {
            this.f38697i.post(new b1(obj, str));
        }
    }

    @Override
    public void playerPause(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerPause(obj, str);
        } else {
            this.f38697i.post(new x0(obj, str));
        }
    }

    @Override
    public void playerPlay(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerPlay(obj, str);
        } else {
            this.f38697i.post(new w0(obj, str));
        }
    }

    @Override
    public void playerResume(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerResume(obj, str);
        } else {
            this.f38697i.post(new y0(obj, str));
        }
    }

    @Override
    public void playerSetRenderType(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerSetRenderType(obj, str);
        } else {
            this.f38697i.post(new g1(obj, str));
        }
    }

    @Override
    public void playerSetSource(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerSetSource(obj, str);
        } else {
            this.f38697i.post(new f1(obj, str));
        }
    }

    @Override
    public void playerStop(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerStop(obj, str);
        } else {
            this.f38697i.post(new z0(obj, str));
        }
    }

    @Override
    public void playerUnmute(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerUnmute(obj, str);
        } else {
            this.f38697i.post(new d1(obj, str));
        }
    }

    @Override
    public void playerUpdateFrame(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerUpdateFrame(obj, str);
        } else {
            this.f38697i.post(new a1(obj, str));
        }
    }

    @Override
    public void preloadSubPlayTemplateView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.preloadSubPlayTemplateView(obj, str);
        } else {
            this.f38697i.post(new h1(obj, str));
        }
    }

    @Override
    public void progressBarOperate(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.progressBarOperate(obj, str);
        } else {
            this.f38697i.post(new a(obj, str));
        }
    }

    @Override
    public void progressOperate(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.progressOperate(obj, str);
        } else {
            this.f38697i.post(new e2(obj, str));
        }
    }

    @Override
    public void reactDeveloper(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.reactDeveloper(obj, str);
        } else {
            this.f38697i.post(new r(obj, str));
        }
    }

    @Override
    public void readyStatus(Object obj, String str) {
        com.mbridge.msdk.foundation.tools.o0.c("JS-Video-Brigde", "VIDEOBridge readyStatus");
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.readyStatus(obj, str);
        } else {
            this.f38697i.post(new i(obj, str));
        }
    }

    @Override
    public void removeCacheItem(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.removeCacheItem(obj, str);
        } else {
            this.f38697i.post(new t1(obj, str));
        }
    }

    @Override
    public void removeFromSuperView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.removeFromSuperView(obj, str);
        } else {
            this.f38697i.post(new b0(obj, str));
        }
    }

    @Override
    public void reportUrls(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.reportUrls(obj, str);
        } else {
            this.f38697i.post(new s(obj, str));
        }
    }

    @Override
    public void setCacheItem(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.setCacheItem(obj, str);
        } else {
            this.f38697i.post(new s1(obj, str));
        }
    }

    @Override
    public void setScaleFitXY(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.setScaleFitXY(obj, str);
        } else {
            this.f38697i.post(new d(obj, str));
        }
    }

    @Override
    public void setSubPlayTemplateInfo(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.setSubPlayTemplateInfo(obj, str);
        } else {
            this.f38697i.post(new l1(obj, str));
        }
    }

    @Override
    public void setViewAlpha(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.setViewAlpha(obj, str);
        } else {
            this.f38697i.post(new l0(obj, str));
        }
    }

    @Override
    public void setViewBgColor(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.setViewBgColor(obj, str);
        } else {
            this.f38697i.post(new k0(obj, str));
        }
    }

    @Override
    public void setViewRect(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.setViewRect(obj, str);
        } else {
            this.f38697i.post(new a0(obj, str));
        }
    }

    @Override
    public void setViewScale(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.setViewScale(obj, str);
        } else {
            this.f38697i.post(new m0(obj, str));
        }
    }

    @Override
    public void showAlertView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.showAlertView(obj, str);
        } else {
            this.f38697i.post(new m(obj, str));
        }
    }

    @Override
    public void showVideoClickView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.showVideoClickView(obj, str);
        } else {
            this.f38697i.post(new c(obj, str));
        }
    }

    @Override
    public void showVideoLocation(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.showVideoLocation(obj, str);
        } else {
            this.f38697i.post(new c1(obj, str));
        }
    }

    @Override
    public void showView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.showView(obj, str);
        } else {
            this.f38697i.post(new j0(obj, str));
        }
    }

    @Override
    public void soundOperate(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.soundOperate(obj, str);
        } else {
            this.f38697i.post(new n1(obj, str));
        }
    }

    @Override
    public void statistics(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.statistics(obj, str);
        } else {
            this.f38697i.post(new g0(obj, str));
        }
    }

    @Override
    public void toggleCloseBtn(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.toggleCloseBtn(obj, str);
        } else {
            this.f38697i.post(new f(obj, str));
        }
    }

    @Override
    public void triggerCloseBtn(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.triggerCloseBtn(obj, str);
        } else {
            this.f38697i.post(new r0(obj, str));
        }
    }

    @Override
    public void videoOperate(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.videoOperate(obj, str);
        } else {
            this.f38697i.post(new y1(obj, str));
        }
    }

    @Override
    public void webviewFireEvent(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.webviewFireEvent(obj, str);
        } else {
            this.f38697i.post(new m1(obj, str));
        }
    }

    @Override
    public void webviewGoBack(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.webviewGoBack(obj, str);
        } else {
            this.f38697i.post(new u0(obj, str));
        }
    }

    @Override
    public void webviewGoForward(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.webviewGoForward(obj, str);
        } else {
            this.f38697i.post(new v0(obj, str));
        }
    }

    @Override
    public void webviewLoad(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.webviewLoad(obj, str);
        } else {
            this.f38697i.post(new s0(obj, str));
        }
    }

    @Override
    public void webviewReload(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.webviewReload(obj, str);
        } else {
            this.f38697i.post(new t0(obj, str));
        }
    }
}
