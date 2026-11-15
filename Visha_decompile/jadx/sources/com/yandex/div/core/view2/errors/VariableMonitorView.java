package com.yandex.div.core.view2.errors;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.util.DisplayMetrics;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.view2.errors.VariableMonitorView;
import defpackage.aob;
import defpackage.e74;
import defpackage.i81;
import defpackage.qnb;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.FunctionReferenceImpl;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J)\u0010\u0017\u001a\u00020\u00162\u0018\u0010\u0015\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00140\u00130\u0012H\u0002¢\u0006\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u001bR\u0014\u0010\u000e\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u001d¨\u0006\u001e"}, d2 = {"Lcom/yandex/div/core/view2/errors/VariableMonitorView;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "Lcom/yandex/div/core/view2/errors/VariableMonitor;", "variableMonitor", MethodDecl.initName, "(Landroid/content/Context;Lcom/yandex/div/core/view2/errors/VariableMonitor;)V", "d", "()Landroid/widget/LinearLayout;", "Landroidx/recyclerview/widget/RecyclerView;", "c", "()Landroidx/recyclerview/widget/RecyclerView;", "", "title", "Landroid/widget/TextView;", "b", "(Ljava/lang/String;)Landroid/widget/TextView;", "", "Lkotlin/Pair;", "Lqnb;", "newList", "Lzfb;", "e", "(Ljava/util/List;)V", "Landroid/content/Context;", "Lcom/yandex/div/core/view2/errors/VariableAdapter;", "Lcom/yandex/div/core/view2/errors/VariableAdapter;", "variablesAdapter", "Landroid/widget/LinearLayout;", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SuppressLint({"ViewConstructor"})
public final class VariableMonitorView extends LinearLayout {

    public final Context context;

    public final VariableAdapter variablesAdapter;

    public final LinearLayout title;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public class AnonymousClass1 extends FunctionReferenceImpl implements e74 {
        public AnonymousClass1(Object obj) {
            super(1, obj, VariableMonitorView.class, "updateTable", "updateTable(Ljava/util/List;)V", 0);
        }

        @Override
        public Object invoke(Object obj) {
            invoke((List<? extends Pair<String, ? extends qnb>>) obj);
            return zfb.a;
        }

        public final void invoke(List<? extends Pair<String, ? extends qnb>> list) {
            y45.j(list, "p0");
            ((VariableMonitorView) this.receiver).e(list);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VariableMonitorView(Context context, VariableMonitor variableMonitor) {
        super(context);
        y45.j(context, "context");
        y45.j(variableMonitor, "variableMonitor");
        this.context = context;
        this.variablesAdapter = new VariableAdapter(new VariableMonitorView$variablesAdapter$1(variableMonitor));
        LinearLayout linearLayoutD = d();
        this.title = linearLayoutD;
        setOrientation(1);
        variableMonitor.l(new AnonymousClass1(this));
        addView(linearLayoutD, new LinearLayout.LayoutParams(-1, -2));
        addView(c(), new LinearLayout.LayoutParams(-1, -2));
    }

    public static final void f(VariableMonitorView variableMonitorView) {
        y45.j(variableMonitorView, "this$0");
        variableMonitorView.title.setVisibility(variableMonitorView.variablesAdapter.getItemCount() != 0 ? 0 : 8);
    }

    public final TextView b(String title) {
        TextView textView = new TextView(this.context);
        DisplayMetrics displayMetrics = textView.getResources().getDisplayMetrics();
        y45.i(displayMetrics, "resources.displayMetrics");
        int iL = BaseDivViewExtensionsKt.L(8, displayMetrics);
        textView.setPadding(iL, iL, iL, iL);
        textView.setTextColor(-1);
        textView.setText(title);
        textView.setTypeface(textView.getTypeface(), 1);
        return textView;
    }

    public final RecyclerView c() {
        RecyclerView recyclerView = new RecyclerView(this.context);
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        recyclerView.setAdapter(this.variablesAdapter);
        recyclerView.setBackgroundColor(Color.argb(50, 0, 0, 0));
        return recyclerView;
    }

    public final LinearLayout d() {
        LinearLayout linearLayout = new LinearLayout(this.context);
        List listN = y71.n(200, 60, 100);
        List listN2 = y71.n("name", "type", ES6Iterator.VALUE_PROPERTY);
        ArrayList arrayList = new ArrayList(z71.v(listN2, 10));
        Iterator it = listN2.iterator();
        while (it.hasNext()) {
            arrayList.add(b((String) it.next()));
        }
        for (Pair pair : i81.l1(arrayList, listN)) {
            TextView textView = (TextView) pair.component1();
            Integer numValueOf = Integer.valueOf(((Number) pair.component2()).intValue());
            DisplayMetrics displayMetrics = linearLayout.getResources().getDisplayMetrics();
            y45.i(displayMetrics, "resources.displayMetrics");
            linearLayout.addView(textView, new LinearLayout.LayoutParams(BaseDivViewExtensionsKt.L(numValueOf, displayMetrics), -2));
        }
        return linearLayout;
    }

    public final void e(List newList) {
        VariableAdapter variableAdapter = this.variablesAdapter;
        List<Pair> list = newList;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        for (Pair pair : list) {
            arrayList.add(aob.c((qnb) pair.component2(), (String) pair.component1()));
        }
        variableAdapter.submitList(arrayList, new Runnable() {
            @Override
            public final void run() {
                VariableMonitorView.f(this.b);
            }
        });
    }
}
