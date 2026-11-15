package com.transsion.publish.adapter;

import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.imageview.ShapeableImageView;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baseui.R$mipmap;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.publish.R$drawable;
import com.transsion.publish.R$layout;
import com.transsion.publish.api.AudioEntity;
import com.transsion.publish.api.GroupBean;
import com.transsion.publish.api.LinkEntity;
import com.transsion.publish.ui.SelectLocationActivity;
import com.transsion.room.api.bean.LocationPlace;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import org.mvel2.ast.ASTNode;

public final class r extends RecyclerView.Adapter {

    private List f48331a = new ArrayList();

    private qo.d f48332b;

    /* JADX WARN: Type inference failed for: r10v1, types: [T, com.transsion.publish.api.LinkEntity] */
    private final void C(RecyclerView.a0 a0Var, int i10, rm.a aVar) {
        Intrinsics.f(a0Var, "null cannot be cast to non-null type com.transsion.publish.adapter.SelectLinksHolder");
        y yVar = (y) a0Var;
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Intrinsics.f(aVar, "null cannot be cast to non-null type com.transsion.publish.api.LinkEntity");
        ?? r10 = (LinkEntity) aVar;
        objectRef.element = r10;
        String url = r10.getUrl();
        String strS = url != null ? StringsKt.S(url, "https://www.", "", false, 4, null) : null;
        String strS2 = strS != null ? StringsKt.S(strS, "http://www.", "", false, 4, null) : null;
        String strS3 = strS2 != null ? StringsKt.S(strS2, "www.", "", false, 4, null) : null;
        String strS4 = strS3 != null ? StringsKt.S(strS3, "https://", "", false, 4, null) : null;
        yVar.g().setText(strS4 != null ? StringsKt.S(strS4, "http://", "", false, 4, null) : null);
        yVar.f().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                r.D(this.f48319a, objectRef, view);
            }
        });
    }

    public static final void D(r rVar, Ref.ObjectRef objectRef, View view) {
        rVar.f48331a.remove(objectRef.element);
        rVar.notifyDataSetChanged();
        List list = rVar.f48331a;
        if (list == null || list.isEmpty()) {
            jo.b bVar = new jo.b();
            bVar.o(4);
            bVar.n(2);
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = jo.b.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, bVar, 0L);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [T, com.transsion.publish.adapter.z] */
    /* JADX WARN: Type inference failed for: r6v1, types: [T, com.transsion.room.api.bean.LocationPlace] */
    private final void E(RecyclerView.a0 a0Var, int i10, rm.a aVar) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Intrinsics.f(a0Var, "null cannot be cast to non-null type com.transsion.publish.adapter.SelectLocationHolder");
        objectRef.element = (z) a0Var;
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        Intrinsics.f(aVar, "null cannot be cast to non-null type com.transsion.room.api.bean.LocationPlace");
        objectRef2.element = (LocationPlace) aVar;
        ((z) objectRef.element).g().setText(((LocationPlace) objectRef2.element).getName() + " " + ((LocationPlace) objectRef2.element).getDistance());
        ((z) objectRef.element).itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                r.F(this.f48325a, objectRef, view);
            }
        });
        ((z) objectRef.element).f().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                r.G(objectRef2, view);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void F(r rVar, Ref.ObjectRef objectRef, View view) {
        Context context = ((z) objectRef.element).itemView.getContext();
        Intrinsics.g(context, "getContext(...)");
        rVar.L(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void G(Ref.ObjectRef objectRef, View view) {
        jo.b bVar = new jo.b();
        bVar.o(8);
        bVar.n(2);
        bVar.q((LocationPlace) objectRef.element);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = jo.b.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, bVar, 0L);
    }

    private final void K(Context context) {
        Navigator.x(TheRouter.c("/room/list").z("is_select_room", true).F("index", 1), context, null, 2, null);
    }

    private final void L(Context context) {
        if (cf.c.f16930a.f(context, "android.permission.ACCESS_FINE_LOCATION")) {
            Intent intent = new Intent(context, (Class<?>) SelectLocationActivity.class);
            intent.setFlags(ASTNode.DEOP);
            context.startActivity(intent);
        }
    }

    private final void M(Context context) {
        gj.b bVar = (gj.b) gj.a.f61068a.a(gj.b.class);
        if (bVar != null) {
            bVar.e(context);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1, types: [T, com.transsion.publish.adapter.n0] */
    /* JADX WARN: Type inference failed for: r8v1, types: [T, com.transsion.moviedetailapi.bean.Subject, rm.a] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void N(RecyclerView.a0 a0Var, int i10, rm.a aVar) {
        String url;
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Intrinsics.f(a0Var, "null cannot be cast to non-null type com.transsion.publish.adapter.SelectWorkHolder");
        objectRef.element = (n0) a0Var;
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        Intrinsics.f(aVar, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.Subject");
        ?? r10 = (Subject) aVar;
        objectRef2.element = r10;
        ShapeableImageView shapeableImageViewF = ((n0) objectRef.element).f();
        int iA = com.blankj.utilcode.util.a0.a(42.0f);
        ni.f.a aVar2 = ni.f.f67269a;
        Context context = shapeableImageViewF.getContext();
        Intrinsics.g(context, "getContext(...)");
        ni.f.b bVarM = aVar2.m(context);
        Cover cover = r10.getCover();
        if (cover == null || (url = cover.getUrl()) == null) {
            url = "";
        }
        bVarM.g(url).i(R$mipmap.home_ic_default_res).m(iA).c(iA).d(shapeableImageViewF);
        ((n0) objectRef.element).i().setText(r10.getTitle());
        try {
            Result.Companion companion = Result.INSTANCE;
            AppCompatTextView appCompatTextViewH = ((n0) objectRef.element).h();
            sm.e eVar = sm.e.f72346a;
            CharSequence charSequenceE = eVar.e(r10);
            if (charSequenceE.length() == 0) {
                charSequenceE = eVar.g(Integer.valueOf(r10.getType()));
            }
            appCompatTextViewH.setText(charSequenceE);
            appCompatTextViewH.setCompoundDrawablesWithIntrinsicBounds(com.transsion.moviedetailapi.h.a(r10.getSubjectType()), 0, 0, 0);
            Result.m453constructorimpl(appCompatTextViewH);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (((Subject) objectRef2.element).getCorrelation()) {
            ((n0) objectRef.element).g().setVisibility(4);
        } else {
            ((n0) objectRef.element).g().setVisibility(0);
            ((n0) objectRef.element).g().setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    r.O(this.f48293a, objectRef2, view);
                }
            });
        }
        ((n0) objectRef.element).itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                r.P(this.f48297a, objectRef, view);
            }
        });
    }

    public static final void O(r rVar, Ref.ObjectRef objectRef, View view) {
        rVar.f48331a.remove(objectRef.element);
        rVar.notifyDataSetChanged();
        if (rVar.f48331a.isEmpty()) {
            jo.b bVar = new jo.b();
            bVar.o(3);
            bVar.n(2);
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = jo.b.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, bVar, 0L);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void P(r rVar, Ref.ObjectRef objectRef, View view) {
        Context context = ((n0) objectRef.element).itemView.getContext();
        Intrinsics.g(context, "getContext(...)");
        rVar.M(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [T, com.transsion.publish.adapter.b] */
    /* JADX WARN: Type inference failed for: r7v1, types: [T, com.transsion.publish.api.AudioEntity] */
    private final void q(RecyclerView.a0 a0Var, int i10, rm.a aVar) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Intrinsics.f(a0Var, "null cannot be cast to non-null type com.transsion.publish.adapter.SelectAudioHolder");
        objectRef.element = (b) a0Var;
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        Intrinsics.f(aVar, "null cannot be cast to non-null type com.transsion.publish.api.AudioEntity");
        objectRef2.element = (AudioEntity) aVar;
        ((b) objectRef.element).i().setText(((AudioEntity) objectRef2.element).getImageTitle());
        TextView textViewH = ((b) objectRef.element).h();
        Long duration = ((AudioEntity) objectRef2.element).getDuration();
        textViewH.setText(duration != null ? TimeUtilKt.p(duration.longValue() / ((long) 1000)) : null);
        qo.d dVar = this.f48332b;
        if (dVar == null || !dVar.b()) {
            ((b) objectRef.element).f().setImageResource(R$drawable.ic_audio_play);
        } else {
            ((b) objectRef.element).f().setImageResource(R$drawable.ic_audio_pause);
        }
        ((b) objectRef.element).itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                r.r(this.f48281a, objectRef, objectRef2, view);
            }
        });
        ((b) objectRef.element).g().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                r.t(objectRef2, view);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void r(r rVar, final Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2, View view) {
        qo.d dVar;
        try {
            if (rVar.f48332b == null) {
                rVar.f48332b = new qo.d();
            }
            qo.d dVar2 = rVar.f48332b;
            if (dVar2 != null && dVar2.b()) {
                ((b) objectRef.element).f().setImageResource(R$drawable.ic_audio_pause);
                qo.d dVar3 = rVar.f48332b;
                if (dVar3 != null) {
                    dVar3.c();
                    return;
                }
                return;
            }
            ((b) objectRef.element).f().setImageResource(R$drawable.ic_audio_play);
            String localPath = ((AudioEntity) objectRef2.element).getLocalPath();
            if (localPath != null && (dVar = rVar.f48332b) != null) {
                Context context = ((b) objectRef.element).itemView.getContext();
                Intrinsics.g(context, "getContext(...)");
                dVar.d(context, localPath, false, new MediaPlayer.OnCompletionListener() {
                    @Override
                    public final void onCompletion(MediaPlayer mediaPlayer) {
                        r.s(objectRef, mediaPlayer);
                    }
                });
            }
            ((b) objectRef.element).f().setImageResource(R$drawable.ic_audio_pause);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void s(Ref.ObjectRef objectRef, MediaPlayer mediaPlayer) {
        ((b) objectRef.element).f().setImageResource(R$drawable.ic_audio_play);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void t(Ref.ObjectRef objectRef, View view) {
        jo.b bVar = new jo.b();
        bVar.o(2);
        bVar.n(2);
        bVar.k((AudioEntity) objectRef.element);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = jo.b.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, bVar, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, com.transsion.publish.adapter.w] */
    /* JADX WARN: Type inference failed for: r4v1, types: [T, com.transsion.publish.api.GroupBean] */
    private final void x(RecyclerView.a0 a0Var, int i10, rm.a aVar) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Intrinsics.f(a0Var, "null cannot be cast to non-null type com.transsion.publish.adapter.SelectGroupHolder");
        objectRef.element = (w) a0Var;
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        Intrinsics.f(aVar, "null cannot be cast to non-null type com.transsion.publish.api.GroupBean");
        objectRef2.element = (GroupBean) aVar;
        ((w) objectRef.element).g().setText(((GroupBean) objectRef2.element).getName());
        ((w) objectRef.element).itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                r.y(this.f48307a, objectRef, view);
            }
        });
        ((w) objectRef.element).f().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                r.z(objectRef2, view);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void y(r rVar, Ref.ObjectRef objectRef, View view) {
        Context context = ((w) objectRef.element).itemView.getContext();
        Intrinsics.g(context, "getContext(...)");
        rVar.K(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void z(Ref.ObjectRef objectRef, View view) {
        jo.b bVar = new jo.b();
        bVar.o(6);
        bVar.n(2);
        bVar.m((GroupBean) objectRef.element);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = jo.b.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, bVar, 0L);
    }

    public final boolean A() {
        List list = this.f48331a;
        return list == null || list.isEmpty();
    }

    public final boolean B() {
        List list = this.f48331a;
        if (list == null || list.isEmpty()) {
            return false;
        }
        List list2 = this.f48331a;
        if (list2 == null || list2.size() != 1 || ((rm.a) this.f48331a.get(0)).getType() == 3) {
            return this.f48331a.size() == 1 && ((rm.a) this.f48331a.get(0)).getType() == 3;
        }
        return true;
    }

    public final void H() {
        Iterator it = this.f48331a.iterator();
        while (it.hasNext()) {
            if (((rm.a) it.next()).getType() == 2) {
                qo.d dVar = this.f48332b;
                if (dVar != null) {
                    dVar.c();
                }
                notifyDataSetChanged();
            }
        }
    }

    public final void I(rm.a entity) {
        Intrinsics.h(entity, "entity");
        this.f48331a.remove(entity);
        notifyDataSetChanged();
    }

    public final void J(rm.a aVar) {
        int i10;
        if (aVar == null) {
            return;
        }
        int type = aVar.getType();
        int i11 = 0;
        if (type == 2) {
            i10 = -1;
            for (Object obj : this.f48331a) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                if (((rm.a) obj) instanceof AudioEntity) {
                    i10 = i11;
                }
                i11 = i12;
            }
            qo.d dVar = this.f48332b;
            if (dVar != null) {
                dVar.f();
            }
            this.f48332b = null;
        } else if (type == 3) {
            i10 = -1;
            for (Object obj2 : this.f48331a) {
                int i13 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                if (((rm.a) obj2) instanceof Subject) {
                    i10 = i11;
                }
                i11 = i13;
            }
        } else if (type == 4) {
            i10 = -1;
            for (Object obj3 : this.f48331a) {
                int i14 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                if (((rm.a) obj3) instanceof LinkEntity) {
                    i10 = i11;
                }
                i11 = i14;
            }
        } else if (type == 6) {
            i10 = -1;
            for (Object obj4 : this.f48331a) {
                int i15 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                if (((rm.a) obj4) instanceof GroupBean) {
                    i10 = i11;
                }
                i11 = i15;
            }
        } else if (type != 8) {
            i10 = -1;
        } else {
            i10 = -1;
            for (Object obj5 : this.f48331a) {
                int i16 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                if (((rm.a) obj5) instanceof LocationPlace) {
                    i10 = i11;
                }
                i11 = i16;
            }
        }
        if (i10 == -1) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(aVar);
            addData(arrayList);
        } else {
            this.f48331a.set(i10, aVar);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(this.f48331a);
            setData(arrayList2);
        }
    }

    public final void addData(List data) {
        Intrinsics.h(data, "data");
        int size = this.f48331a.size();
        this.f48331a.addAll(data);
        notifyItemRangeInserted(size, data.size());
    }

    @Override
    public int getItemCount() {
        return this.f48331a.size();
    }

    @Override
    public int getItemViewType(int i10) {
        int type = ((rm.a) this.f48331a.get(i10)).getType();
        int i11 = 2;
        if (type != 2) {
            i11 = 3;
            if (type != 3) {
                i11 = 4;
                if (type != 4) {
                    i11 = 6;
                    if (type != 6) {
                        i11 = 8;
                        if (type != 8) {
                            return 0;
                        }
                    }
                }
            }
        }
        return i11;
    }

    @Override
    public void onBindViewHolder(RecyclerView.a0 holder, int i10) {
        Intrinsics.h(holder, "holder");
        rm.a aVar = (rm.a) this.f48331a.get(i10);
        int type = aVar.getType();
        if (type == 2) {
            q(holder, i10, aVar);
            return;
        }
        if (type == 3) {
            N(holder, i10, aVar);
            return;
        }
        if (type == 4) {
            C(holder, i10, aVar);
        } else if (type == 6) {
            x(holder, i10, aVar);
        } else {
            if (type != 8) {
                return;
            }
            E(holder, i10, aVar);
        }
    }

    @Override
    public RecyclerView.a0 onCreateViewHolder(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        if (i10 == 2) {
            View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_publish_music, parent, false);
            Intrinsics.e(viewInflate);
            return new b(viewInflate);
        }
        if (i10 == 3) {
            View viewInflate2 = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_publish_work, parent, false);
            Intrinsics.e(viewInflate2);
            return new n0(viewInflate2);
        }
        if (i10 == 4) {
            View viewInflate3 = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_publish_link, parent, false);
            Intrinsics.e(viewInflate3);
            return new y(viewInflate3);
        }
        if (i10 == 6) {
            View viewInflate4 = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_publish_group, parent, false);
            Intrinsics.e(viewInflate4);
            return new w(viewInflate4);
        }
        if (i10 != 8) {
            return new c(null);
        }
        View viewInflate5 = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_publish_location, parent, false);
        Intrinsics.e(viewInflate5);
        return new z(viewInflate5);
    }

    public final void setData(List data) {
        Intrinsics.h(data, "data");
        this.f48331a.clear();
        this.f48331a.addAll(data);
        notifyDataSetChanged();
    }

    public final void u() {
        qo.d dVar = this.f48332b;
        if (dVar != null) {
            dVar.f();
        }
    }

    public final List v() {
        return this.f48331a;
    }

    public final String w() {
        String strValueOf = "";
        for (rm.a aVar : this.f48331a) {
            if (aVar.getType() == 3) {
                Intrinsics.f(aVar, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.Subject");
                strValueOf = String.valueOf(((Subject) aVar).getSubjectId());
            }
        }
        return strValueOf;
    }
}
