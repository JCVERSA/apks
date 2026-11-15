package com.transsion.magicvideo.fragments;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.DiffUtil;
import com.transsion.magicvideo.fragments.WhatsAppVideoFragment;
import com.transsion.magicvideo.utils.MediaItemDiffCallback;
import com.transsion.playercommon.videomodel.WhatsappViewModel;
import com.transsion.playercommon.whatsapp.WhatsappFile;
import defpackage.ie8;
import defpackage.k29;
import defpackage.mc7;
import defpackage.t74;
import defpackage.tpb;
import defpackage.vb;
import defpackage.xac;
import defpackage.ykc;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.Function;
import java.util.stream.Collectors;

public class WhatsAppVideoFragment extends ShortVideosFragment {
    public WhatsappViewModel c1;

    public static ArrayList p4(List list, WhatsAppVideoFragment whatsAppVideoFragment) {
        return new ArrayList(tpb.j0().y((ArrayList) list.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((WhatsappFile) obj).getFilePath();
            }
        }).collect(Collectors.toCollection(new xac()))));
    }

    @Override
    public void loadData(boolean z, boolean z2) {
        WhatsappViewModel whatsappViewModel = this.c1;
        if (whatsappViewModel != null) {
            whatsappViewModel.v(baseActivity(), true);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.s = 16;
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        this.c1.b0(this);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.l = view;
        x1();
        WhatsappViewModel whatsappViewModel = (WhatsappViewModel) new ViewModelProvider(this).get(WhatsappViewModel.class);
        this.c1 = whatsappViewModel;
        whatsappViewModel.Z(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.s4((List) obj);
            }
        });
        loadData(false);
        S2(view);
        Q0(view, this.M);
        P2();
        super.onViewCreatedEnd(view, bundle);
    }

    public final void q4(ArrayList arrayList) {
        DiffUtil.DiffResult diffResultCalculateDiff = DiffUtil.calculateDiff(new MediaItemDiffCallback(this.t.getData(), arrayList));
        this.mbFragmentShowCompleted = true;
        this.t.setNewDiffData(diffResultCalculateDiff, arrayList);
        this.r.clear();
        this.r.addAll(this.t.getData());
        ykc.a().c(arrayList);
        x1();
    }

    public final void r4(Throwable th) {
        Log.e("WhatsAppVideoFragment", "loadData error", th);
        x1();
    }

    public final void s4(final List list) {
        Log.i("WhatsAppVideoFragment", "[WhatsApp] loadData: " + list);
        if (list != null && !list.isEmpty()) {
            mc7.K(this).g(bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return WhatsAppVideoFragment.p4(list, (WhatsAppVideoFragment) obj);
                }
            }).u(new ie8() {
                @Override
                public final boolean test(Object obj) {
                    return Objects.nonNull((ArrayList) obj);
                }
            }).k().d0(k29.c()).M(vb.a()).a0(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.q4((ArrayList) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.r4((Throwable) obj);
                }
            });
            return;
        }
        this.r.clear();
        x1();
        ykc.a().c(this.r);
    }
}
