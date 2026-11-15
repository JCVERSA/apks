package com.transsion.room.activity;

import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.room.R$id;
import com.transsion.room.fragment.RoomDetailFragmentNew;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import fp.b;
import ij.y;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import yg.l;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0011\u0010\u000fJ\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001a\u0010\u0014R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010$\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010(\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006)"}, d2 = {"Lcom/transsion/room/activity/RoomDetailActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Lfp/b;", "<init>", "()V", "", "D0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "C0", "()Lfp/b;", "", "isTranslucent", "()Z", "isStatusDark", "o0", "", "f0", "()Ljava/lang/String;", "l0", "m0", "k0", "p0", "retryLoadData", "getPageName", "Lcom/transsion/moviedetailapi/bean/RoomItem;", "i", "Lcom/transsion/moviedetailapi/bean/RoomItem;", WebConstants.FIELD_ITEM, "j", "Ljava/lang/String;", "id", CampaignEx.JSON_KEY_AD_K, "Z", "isNeedStartRoomHome", "Lcom/transsion/room/fragment/RoomDetailFragmentNew;", "l", "Lcom/transsion/room/fragment/RoomDetailFragmentNew;", "mFragment", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RoomDetailActivity extends BaseNewActivity<b> {

    public RoomItem item;

    public String id;

    public boolean isNeedStartRoomHome;

    private RoomDetailFragmentNew mFragment;

    private final void D0() {
        if (this.mFragment == null) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
            w wVarP = supportFragmentManager.p();
            Intrinsics.g(wVarP, "beginTransaction()");
            RoomDetailFragmentNew roomDetailFragmentNewA = RoomDetailFragmentNew.INSTANCE.a(this.item, this.id, this.isNeedStartRoomHome);
            wVarP.s(R$id.container, roomDetailFragmentNewA);
            this.mFragment = roomDetailFragmentNewA;
            wVarP.j();
        }
    }

    @Override
    public b getViewBinding() {
        b bVarC = b.c(getLayoutInflater());
        Intrinsics.g(bVarC, "inflate(...)");
        return bVarC;
    }

    @Override
    public String f0() {
        return "";
    }

    @Override
    public String getPageName() {
        return "room_detail";
    }

    @Override
    public boolean isStatusDark() {
        return !y.f62128a.a();
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    @Override
    public void k0() {
    }

    @Override
    public void l0() {
        s0();
    }

    @Override
    public void m0() {
    }

    @Override
    public boolean o0() {
        return false;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        TheRouter.l(this);
        super.onCreate(savedInstanceState);
    }

    @Override
    public void p0() {
        D0();
    }

    @Override
    public void retryLoadData() {
        w0();
        if (!l.f76264a.e()) {
            y0();
        } else {
            u0();
            D0();
        }
    }
}
