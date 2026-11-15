package em;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.u;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.member.MemberViewModel;
import com.transsion.member.R$id;
import com.transsion.member.R$layout;
import com.transsion.member.R$mipmap;
import com.transsion.member.R$string;
import com.transsion.member.constants.TaskType;
import com.transsion.member.view.CheckInView;
import com.transsion.memberapi.MemberTaskItem;
import com.transsion.memberapi.MemberTaskItemCheckInInfo;
import com.transsion.memberapi.MemberTaskSubmitCheckInRes;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

public final class c extends BaseItemProvider {

    private final u f59738e;

    private final MemberViewModel f59739f;

    private boolean f59740g;

    public static final class a implements CheckInView.d {

        final MemberTaskItem f59741a;

        final c f59742b;

        final CheckInView f59743c;

        a(MemberTaskItem memberTaskItem, c cVar, CheckInView checkInView) {
            this.f59741a = memberTaskItem;
            this.f59742b = cVar;
            this.f59743c = checkInView;
        }

        @Override
        public void a(CheckInView.b holder, int i10) {
            Intrinsics.h(holder, "holder");
            List<MemberTaskItemCheckInInfo> checkInList = this.f59741a.getCheckInList();
            List<MemberTaskItemCheckInInfo> list = checkInList;
            if (list == null || list.isEmpty()) {
                return;
            }
            ImageView imageView = (ImageView) holder.itemView.findViewById(R$id.tag_iv);
            TextView textView = (TextView) holder.itemView.findViewById(R$id.member_point);
            MemberTaskItemCheckInInfo memberTaskItemCheckInInfo = checkInList.get(i10);
            if (textView != null) {
                textView.setText("+" + memberTaskItemCheckInInfo.getRewardAmount() + (memberTaskItemCheckInInfo.getRewardType() == 1 ? "days" : ""));
            }
            if (holder.f() == 2 || holder.f() == 5) {
                if (memberTaskItemCheckInInfo.isToday() && this.f59742b.f59740g) {
                    View viewFindViewById = holder.itemView.findViewById(R$id.member_check_in_tv);
                    if (viewFindViewById != null) {
                        uf.c.g(viewFindViewById);
                    }
                    View viewFindViewById2 = holder.itemView.findViewById(R$id.member_check_in_pb);
                    if (viewFindViewById2 != null) {
                        uf.c.k(viewFindViewById2);
                    }
                } else {
                    View viewFindViewById3 = holder.itemView.findViewById(R$id.member_check_in_tv);
                    if (viewFindViewById3 != null) {
                        uf.c.k(viewFindViewById3);
                    }
                    View viewFindViewById4 = holder.itemView.findViewById(R$id.member_check_in_pb);
                    if (viewFindViewById4 != null) {
                        uf.c.g(viewFindViewById4);
                    }
                }
            }
            if (imageView != null) {
                imageView.setImageResource(memberTaskItemCheckInInfo.getRewardType() == 1 ? R$mipmap.ic_member_small : R$mipmap.ic_member_points);
            }
            TextView textView2 = (TextView) holder.itemView.findViewById(R$id.member_check_in);
            if (textView2 != null) {
                textView2.setText((holder.f() == 5 || holder.f() == 2) ? this.f59743c.getContext().getString(R$string.member_claim) : this.f59743c.getContext().getString(R$string.member_task_day_tip, Integer.valueOf(i10 + 1)));
            }
        }

        @Override
        public int b(int i10) {
            List<MemberTaskItemCheckInInfo> checkInList = this.f59741a.getCheckInList();
            List<MemberTaskItemCheckInInfo> list = checkInList;
            if (list == null || list.isEmpty()) {
                return 2;
            }
            MemberTaskItemCheckInInfo memberTaskItemCheckInInfo = checkInList.get(i10);
            boolean z10 = i10 == checkInList.size() - 1;
            if (memberTaskItemCheckInInfo.getHasCheckIn()) {
                return z10 ? 4 : 1;
            }
            if (memberTaskItemCheckInInfo.isToday()) {
                return z10 ? 5 : 2;
            }
            return z10 ? 6 : 3;
        }
    }

    static final class b implements c0, FunctionAdapter {

        private final Function1 f59744a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f59744a = function;
        }

        @Override
        public final Function a() {
            return this.f59744a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f59744a.invoke(obj);
        }
    }

    public c(u owner, MemberViewModel viewModel) {
        Intrinsics.h(owner, "owner");
        Intrinsics.h(viewModel, "viewModel");
        this.f59738e = owner;
        this.f59739f = viewModel;
    }

    public static final Unit C(CheckInView checkInView, MemberTaskItem memberTaskItem, c cVar, int i10, int i11) {
        if (i11 == 2 || i11 == 5) {
            if (com.transsion.baseui.util.c.f42332a.a(checkInView.getId(), 2000L)) {
                return Unit.f64096a;
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                List<MemberTaskItemCheckInInfo> checkInList = memberTaskItem.getCheckInList();
                List<MemberTaskItemCheckInInfo> list = checkInList;
                if (list != null && !list.isEmpty()) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    linkedHashMap.put("event_detail", "task_check_in_item");
                    linkedHashMap.put("index", String.valueOf(i10));
                    Unit unit = Unit.f64096a;
                    cVar.F(memberTaskItem, linkedHashMap);
                    MemberTaskItemCheckInInfo memberTaskItemCheckInInfo = checkInList.get(i10);
                    if (memberTaskItemCheckInInfo.getHasCheckIn() || !memberTaskItemCheckInInfo.isToday()) {
                        checkInView.notifyItemCheckInStateChange(i10);
                    } else {
                        cVar.f59740g = true;
                        checkInView.notifyItemCheckInStateChange(i10);
                        cVar.f59739f.M(i10);
                    }
                }
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
        return Unit.f64096a;
    }

    public static final Unit D(c cVar, MemberTaskItem memberTaskItem, CheckInView checkInView, Pair pair) {
        Object next;
        if (!cVar.f59740g) {
            return Unit.f64096a;
        }
        cVar.f59740g = false;
        List<MemberTaskItemCheckInInfo> checkInList = memberTaskItem.getCheckInList();
        if (checkInList == null || checkInList.isEmpty()) {
            return Unit.f64096a;
        }
        int iIntValue = ((Number) pair.getFirst()).intValue();
        MemberTaskSubmitCheckInRes memberTaskSubmitCheckInRes = (MemberTaskSubmitCheckInRes) pair.getSecond();
        if (memberTaskSubmitCheckInRes != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("event_detail", "task_check_in_item_success");
            linkedHashMap.put("index", String.valueOf(iIntValue));
            Unit unit = Unit.f64096a;
            cVar.F(memberTaskItem, linkedHashMap);
            List<MemberTaskItemCheckInInfo> checkInList2 = memberTaskItem.getCheckInList();
            if (checkInList2 != null) {
                Iterator<T> it = checkInList2.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!((MemberTaskItemCheckInInfo) next).isToday());
                MemberTaskItemCheckInInfo memberTaskItemCheckInInfo = (MemberTaskItemCheckInInfo) next;
                if (memberTaskItemCheckInInfo != null) {
                    memberTaskItemCheckInInfo.setHasCheckIn(true);
                }
            }
            StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
            String string = checkInView.getContext().getString(memberTaskSubmitCheckInRes.getRewardType() == 1 ? R$string.member_claimed_succeed_days : R$string.member_reward_points_receive_tips);
            Intrinsics.g(string, "getString(...)");
            String str = String.format(string, Arrays.copyOf(new Object[]{Integer.valueOf(memberTaskSubmitCheckInRes.getRewardAmount())}, 1));
            Intrinsics.g(str, "format(...)");
            cVar.G(str);
        } else {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            linkedHashMap2.put("event_detail", "task_check_in_item_fail");
            linkedHashMap2.put("index", String.valueOf(iIntValue));
            Unit unit2 = Unit.f64096a;
            cVar.F(memberTaskItem, linkedHashMap2);
            String string2 = checkInView.getContext().getString(R$string.member_reward_receive_fault_tips);
            Intrinsics.g(string2, "getString(...)");
            cVar.G(string2);
        }
        checkInView.notifyItemCheckInStateChange(iIntValue);
        return Unit.f64096a;
    }

    private final void E(MemberTaskItem memberTaskItem) {
        HashMap map = new HashMap();
        map.put("event_type", "task_browse");
        map.put("taskSubType", String.valueOf(memberTaskItem.getTaskSubType()));
        map.put("rewardType", String.valueOf(memberTaskItem.getRewardType()));
        map.put("rewardAmount", String.valueOf(memberTaskItem.getRewardAmount()));
        List<MemberTaskItemCheckInInfo> checkInList = memberTaskItem.getCheckInList();
        Object obj = null;
        if (checkInList != null) {
            for (Object obj2 : checkInList) {
                MemberTaskItemCheckInInfo memberTaskItemCheckInInfo = (MemberTaskItemCheckInInfo) obj2;
                if (memberTaskItemCheckInInfo.isToday() && !memberTaskItemCheckInInfo.getHasCheckIn()) {
                    obj = obj2;
                    break;
                }
            }
            obj = (MemberTaskItemCheckInInfo) obj;
        }
        map.put("showClaim", String.valueOf(obj == null));
        com.transsion.baselib.helper.a.f42121a.a("memberdetail", map);
    }

    private final void F(MemberTaskItem memberTaskItem, Map map) {
        HashMap map2 = new HashMap();
        map2.put("event_type", "task_click");
        map2.put("taskSubType", String.valueOf(memberTaskItem.getTaskSubType()));
        map2.put("rewardType", String.valueOf(memberTaskItem.getRewardType()));
        map2.put("rewardAmount", String.valueOf(memberTaskItem.getRewardAmount()));
        List<MemberTaskItemCheckInInfo> checkInList = memberTaskItem.getCheckInList();
        Object obj = null;
        if (checkInList != null) {
            for (Object obj2 : checkInList) {
                MemberTaskItemCheckInInfo memberTaskItemCheckInInfo = (MemberTaskItemCheckInInfo) obj2;
                if (memberTaskItemCheckInInfo.isToday() && !memberTaskItemCheckInInfo.getHasCheckIn()) {
                    obj = obj2;
                    break;
                }
            }
            obj = (MemberTaskItemCheckInInfo) obj;
        }
        map2.put("showClaim", String.valueOf(obj == null));
        map2.putAll(map);
        com.transsion.baselib.helper.a.f42121a.b("memberdetail", map2);
    }

    private final void G(String str) {
        fh.b.f60176a.g(R$layout.claim_succeed_layout, str, (24 & 4) != 0 ? 0 : 80, (24 & 8) != 0 ? 0 : 0, (24 & 16) != 0 ? 0 : a0.a(66.0f));
    }

    @Override
    public void b(BaseViewHolder helper, final MemberTaskItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        E(item);
        final CheckInView checkInView = (CheckInView) helper.getView(R$id.member_check_in_view);
        checkInView.setDataViewBinder(new a(item, this, checkInView));
        checkInView.setItemClicker(new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return c.C(checkInView, item, this, ((Integer) obj).intValue(), ((Integer) obj2).intValue());
            }
        });
        checkInView.notifyAllChange();
        this.f59739f.B().j(this.f59738e, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return c.D(this.f59735a, item, checkInView, (Pair) obj);
            }
        }));
    }

    @Override
    public int l() {
        return TaskType.CHECK_IN.getValue();
    }

    @Override
    public int m() {
        return R$layout.item_task_check_in_container;
    }
}
