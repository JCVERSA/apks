package zi;

import androidx.room.RoomDatabase;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.baselib.db.notification.MsgBean;
import com.transsion.ninegridview.preview.GifImagePreviewActivity;
import com.transsion.push.PushConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class h implements zi.a {

    private final RoomDatabase f76797a;

    private final androidx.room.g f76798b = new a();

    private final androidx.room.e f76799c = new b();

    private final androidx.room.e f76800d = new c();

    class a extends androidx.room.g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `msg` (`id`,`deep_link`,`desc`,`image_list`,`message_id`,`source`,`style`,`title`,`type`,`receive_time`,`msg_status`,`show_time`,`force_show`,`has_screen_on`,`built_in`,`permanent_msg_status`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override
        public void a(y3.e eVar, MsgBean msgBean) {
            eVar.c(1, msgBean.getId());
            if (msgBean.getDeeplink() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, msgBean.getDeeplink());
            }
            if (msgBean.getDesc() == null) {
                eVar.g(3);
            } else {
                eVar.i(3, msgBean.getDesc());
            }
            if (msgBean.getImageList() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, msgBean.getImageList());
            }
            if (msgBean.getMessageId() == null) {
                eVar.g(5);
            } else {
                eVar.i(5, msgBean.getMessageId());
            }
            if (msgBean.getSource() == null) {
                eVar.g(6);
            } else {
                eVar.i(6, msgBean.getSource());
            }
            if (msgBean.getStyle() == null) {
                eVar.g(7);
            } else {
                eVar.i(7, msgBean.getStyle());
            }
            if (msgBean.getTitle() == null) {
                eVar.g(8);
            } else {
                eVar.i(8, msgBean.getTitle());
            }
            if (msgBean.getType() == null) {
                eVar.g(9);
            } else {
                eVar.i(9, msgBean.getType());
            }
            if (msgBean.getReceiveTime() == null) {
                eVar.g(10);
            } else {
                eVar.c(10, msgBean.getReceiveTime().longValue());
            }
            eVar.c(11, msgBean.getMsgStatus());
            if (msgBean.getShowTime() == null) {
                eVar.g(12);
            } else {
                eVar.c(12, msgBean.getShowTime().longValue());
            }
            eVar.c(13, msgBean.getForceShow() ? 1L : 0L);
            eVar.c(14, msgBean.getHasScreenOn() ? 1L : 0L);
            eVar.c(15, msgBean.getBuiltIn() ? 1L : 0L);
            eVar.c(16, msgBean.getPermanentMsgStatus());
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override
        protected String b() {
            return "DELETE FROM `msg` WHERE `id` = ?";
        }

        @Override
        public void a(y3.e eVar, MsgBean msgBean) {
            eVar.c(1, msgBean.getId());
        }
    }

    class c extends androidx.room.e {
        c() {
        }

        @Override
        protected String b() {
            return "UPDATE OR ABORT `msg` SET `id` = ?,`deep_link` = ?,`desc` = ?,`image_list` = ?,`message_id` = ?,`source` = ?,`style` = ?,`title` = ?,`type` = ?,`receive_time` = ?,`msg_status` = ?,`show_time` = ?,`force_show` = ?,`has_screen_on` = ?,`built_in` = ?,`permanent_msg_status` = ? WHERE `id` = ?";
        }

        @Override
        public void a(y3.e eVar, MsgBean msgBean) {
            eVar.c(1, msgBean.getId());
            if (msgBean.getDeeplink() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, msgBean.getDeeplink());
            }
            if (msgBean.getDesc() == null) {
                eVar.g(3);
            } else {
                eVar.i(3, msgBean.getDesc());
            }
            if (msgBean.getImageList() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, msgBean.getImageList());
            }
            if (msgBean.getMessageId() == null) {
                eVar.g(5);
            } else {
                eVar.i(5, msgBean.getMessageId());
            }
            if (msgBean.getSource() == null) {
                eVar.g(6);
            } else {
                eVar.i(6, msgBean.getSource());
            }
            if (msgBean.getStyle() == null) {
                eVar.g(7);
            } else {
                eVar.i(7, msgBean.getStyle());
            }
            if (msgBean.getTitle() == null) {
                eVar.g(8);
            } else {
                eVar.i(8, msgBean.getTitle());
            }
            if (msgBean.getType() == null) {
                eVar.g(9);
            } else {
                eVar.i(9, msgBean.getType());
            }
            if (msgBean.getReceiveTime() == null) {
                eVar.g(10);
            } else {
                eVar.c(10, msgBean.getReceiveTime().longValue());
            }
            eVar.c(11, msgBean.getMsgStatus());
            if (msgBean.getShowTime() == null) {
                eVar.g(12);
            } else {
                eVar.c(12, msgBean.getShowTime().longValue());
            }
            eVar.c(13, msgBean.getForceShow() ? 1L : 0L);
            eVar.c(14, msgBean.getHasScreenOn() ? 1L : 0L);
            eVar.c(15, msgBean.getBuiltIn() ? 1L : 0L);
            eVar.c(16, msgBean.getPermanentMsgStatus());
            eVar.c(17, msgBean.getId());
        }
    }

    public h(RoomDatabase roomDatabase) {
        this.f76797a = roomDatabase;
    }

    public static List m() {
        return Collections.emptyList();
    }

    public static Unit n(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("DELETE FROM MSG");
        try {
            eVarF0.C0();
            return Unit.f64096a;
        } finally {
            eVarF0.close();
        }
    }

    public static List o(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM MSG ORDER BY receive_time DESC");
        try {
            int iC = androidx.room.util.i.c(eVarF0, "id");
            int iC2 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_DEEP_LINK_URL);
            int iC3 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_DESC);
            int iC4 = androidx.room.util.i.c(eVarF0, GifImagePreviewActivity.IMAGE_LIST);
            int iC5 = androidx.room.util.i.c(eVarF0, PushConstants.EXTRA_PUSH_MESSAGE_ID);
            int iC6 = androidx.room.util.i.c(eVarF0, EventConstants.KEY_SOURCE);
            int iC7 = androidx.room.util.i.c(eVarF0, TtmlNode.TAG_STYLE);
            int iC8 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC9 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC10 = androidx.room.util.i.c(eVarF0, "receive_time");
            int iC11 = androidx.room.util.i.c(eVarF0, "msg_status");
            int iC12 = androidx.room.util.i.c(eVarF0, TrackingKey.SHOW_TIME);
            int iC13 = androidx.room.util.i.c(eVarF0, "force_show");
            int iC14 = androidx.room.util.i.c(eVarF0, "has_screen_on");
            int iC15 = androidx.room.util.i.c(eVarF0, "built_in");
            int iC16 = androidx.room.util.i.c(eVarF0, "permanent_msg_status");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                int i10 = iC14;
                ArrayList arrayList2 = arrayList;
                int i11 = iC5;
                int i12 = iC15;
                arrayList2.add(new MsgBean((int) eVarF0.getLong(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : eVarF0.q0(iC9), eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10)), (int) eVarF0.getLong(iC11), eVarF0.isNull(iC12) ? null : Long.valueOf(eVarF0.getLong(iC12)), ((int) eVarF0.getLong(iC13)) != 0, ((int) eVarF0.getLong(i10)) != 0, ((int) eVarF0.getLong(iC15)) != 0, (int) eVarF0.getLong(iC16)));
                iC14 = i10;
                iC3 = iC3;
                iC4 = iC4;
                iC6 = iC6;
                iC15 = i12;
                iC16 = iC16;
                iC5 = i11;
                arrayList = arrayList2;
                iC2 = iC2;
            }
            return arrayList;
        } finally {
            eVarF0.close();
        }
    }

    public static MsgBean p(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM MSG WHERE message_id = ?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "id");
            int iC2 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_DEEP_LINK_URL);
            int iC3 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_DESC);
            int iC4 = androidx.room.util.i.c(eVarF0, GifImagePreviewActivity.IMAGE_LIST);
            int iC5 = androidx.room.util.i.c(eVarF0, PushConstants.EXTRA_PUSH_MESSAGE_ID);
            int iC6 = androidx.room.util.i.c(eVarF0, EventConstants.KEY_SOURCE);
            int iC7 = androidx.room.util.i.c(eVarF0, TtmlNode.TAG_STYLE);
            int iC8 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC9 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC10 = androidx.room.util.i.c(eVarF0, "receive_time");
            int iC11 = androidx.room.util.i.c(eVarF0, "msg_status");
            int iC12 = androidx.room.util.i.c(eVarF0, TrackingKey.SHOW_TIME);
            int iC13 = androidx.room.util.i.c(eVarF0, "force_show");
            int iC14 = androidx.room.util.i.c(eVarF0, "has_screen_on");
            int iC15 = androidx.room.util.i.c(eVarF0, "built_in");
            int iC16 = androidx.room.util.i.c(eVarF0, "permanent_msg_status");
            MsgBean msgBean = null;
            if (eVarF0.C0()) {
                msgBean = new MsgBean((int) eVarF0.getLong(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : eVarF0.q0(iC9), eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10)), (int) eVarF0.getLong(iC11), eVarF0.isNull(iC12) ? null : Long.valueOf(eVarF0.getLong(iC12)), ((int) eVarF0.getLong(iC13)) != 0, ((int) eVarF0.getLong(iC14)) != 0, ((int) eVarF0.getLong(iC15)) != 0, (int) eVarF0.getLong(iC16));
            }
            eVarF0.close();
            return msgBean;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static List q(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM MSG WHERE type = ? ORDER BY id ASC");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "id");
            int iC2 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_DEEP_LINK_URL);
            int iC3 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_DESC);
            int iC4 = androidx.room.util.i.c(eVarF0, GifImagePreviewActivity.IMAGE_LIST);
            int iC5 = androidx.room.util.i.c(eVarF0, PushConstants.EXTRA_PUSH_MESSAGE_ID);
            int iC6 = androidx.room.util.i.c(eVarF0, EventConstants.KEY_SOURCE);
            int iC7 = androidx.room.util.i.c(eVarF0, TtmlNode.TAG_STYLE);
            int iC8 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC9 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC10 = androidx.room.util.i.c(eVarF0, "receive_time");
            int iC11 = androidx.room.util.i.c(eVarF0, "msg_status");
            int iC12 = androidx.room.util.i.c(eVarF0, TrackingKey.SHOW_TIME);
            int iC13 = androidx.room.util.i.c(eVarF0, "force_show");
            int iC14 = androidx.room.util.i.c(eVarF0, "has_screen_on");
            int iC15 = androidx.room.util.i.c(eVarF0, "built_in");
            int iC16 = androidx.room.util.i.c(eVarF0, "permanent_msg_status");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                int i10 = iC13;
                int i11 = iC14;
                int i12 = iC4;
                int i13 = iC6;
                int i14 = iC15;
                arrayList.add(new MsgBean((int) eVarF0.getLong(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : eVarF0.q0(iC9), eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10)), (int) eVarF0.getLong(iC11), eVarF0.isNull(iC12) ? null : Long.valueOf(eVarF0.getLong(iC12)), ((int) eVarF0.getLong(i10)) != 0, ((int) eVarF0.getLong(i11)) != 0, ((int) eVarF0.getLong(iC15)) != 0, (int) eVarF0.getLong(iC16)));
                iC13 = i10;
                iC2 = iC2;
                iC4 = i12;
                iC6 = i13;
                iC5 = iC5;
                iC14 = i11;
                iC15 = i14;
                iC16 = iC16;
                iC3 = iC3;
            }
            eVarF0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public Unit r(MsgBean msgBean, y3.b bVar) throws Exception {
        this.f76798b.d(bVar, msgBean);
        return Unit.f64096a;
    }

    public Unit s(MsgBean msgBean, y3.b bVar) throws Exception {
        this.f76800d.c(bVar, msgBean);
        return Unit.f64096a;
    }

    @Override
    public Object a(Continuation continuation) {
        return androidx.room.util.b.f(this.f76797a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return h.n((y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object b(final MsgBean msgBean, Continuation continuation) {
        msgBean.getClass();
        return androidx.room.util.b.f(this.f76797a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f76792a.s(msgBean, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object c(final MsgBean msgBean, Continuation continuation) {
        msgBean.getClass();
        return androidx.room.util.b.f(this.f76797a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f76794a.r(msgBean, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object d(Continuation continuation) {
        return androidx.room.util.b.f(this.f76797a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return h.o((y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object e(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f76797a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return h.p(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object f(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f76797a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return h.q(str, (y3.b) obj);
            }
        }, continuation);
    }
}
