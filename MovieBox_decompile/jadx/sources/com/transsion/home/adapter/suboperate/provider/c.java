package com.transsion.home.adapter.suboperate.provider;

import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.AppointSubject;
import com.transsion.home.bean.OperateItem;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class c extends BaseItemProvider {

    private final Function1 f43394e;

    private final int f43395f;

    private final SimpleDateFormat f43396g;

    public c(Function1 onAppointmentCLick, int i10) {
        Intrinsics.h(onAppointmentCLick, "onAppointmentCLick");
        this.f43394e = onAppointmentCLick;
        this.f43395f = i10;
        this.f43396g = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
    }

    public static final void A(c cVar, OperateItem operateItem) {
        List<Object> data;
        BaseProviderMultiAdapter baseProviderMultiAdapterG = cVar.g();
        if (baseProviderMultiAdapterG != null && (data = baseProviderMultiAdapterG.getData()) != null) {
            data.remove(operateItem);
        }
        BaseProviderMultiAdapter baseProviderMultiAdapterG2 = cVar.g();
        if (baseProviderMultiAdapterG2 != null) {
            baseProviderMultiAdapterG2.notifyDataSetChanged();
        }
    }

    private final List B(List list) {
        Date date = new Date();
        ArrayList arrayList = new ArrayList();
        try {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AppointSubject appointSubject = (AppointSubject) it.next();
                SimpleDateFormat simpleDateFormat = this.f43396g;
                String appointmentDate = appointSubject.getAppointmentDate();
                if (appointmentDate == null) {
                    appointmentDate = "";
                }
                Date date2 = simpleDateFormat.parse(appointmentDate);
                if (date2 != null && date2.after(date)) {
                    arrayList.add(appointSubject);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return arrayList;
    }

    @Override
    public int l() {
        return PostItemType.APPOINTMENT_LIST.ordinal();
    }

    @Override
    public int m() {
        return R$layout.item_sub_operation_appointment;
    }

    @Override
    public void b(BaseViewHolder helper, final OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ((TextView) helper.getView(R$id.sub_operation_appointment_title)).setText(item.getTitle());
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.sub_operation_appointment_recycle);
        com.transsion.home.adapter.suboperate.adapter.f fVar = new com.transsion.home.adapter.suboperate.adapter.f(0, this.f43394e, this.f43395f, item, 1, null);
        recyclerView.setAdapter(fVar);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(k(), 0, false);
        linearLayoutManager.setItemPrefetchEnabled(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new tf.f(8.0f, 0.0f, 12.0f, 2, null));
        }
        List<AppointSubject> subjects = item.getSubjects();
        if (subjects == null) {
            subjects = new ArrayList<>();
        }
        List listB = B(subjects);
        fVar.n1(listB);
        if (listB.isEmpty()) {
            helper.itemView.post(new Runnable() {
                @Override
                public final void run() {
                    c.A(this.f43388a, item);
                }
            });
        }
    }
}
