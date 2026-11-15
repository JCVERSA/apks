package com.transsion.ad.test.ad_config;

import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.o;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.test.TestBaseActivity;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.k;
import sh.v;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u0010B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0006\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"Lcom/transsion/ad/test/ad_config/TestAdSceneActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "", "json", "Q", "(Ljava/lang/String;)Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "getLogTag", "()Ljava/lang/String;", "Lsh/v;", "a", "Lsh/v;", "binding", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TestAdSceneActivity extends TestBaseActivity {

    private v binding;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/ad/test/ad_config/TestAdSceneActivity$a;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/google/gson/JsonObject;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "<init>", "()V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/google/gson/JsonObject;)V", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class a extends BaseQuickAdapter {
        public a() {
            super(R$layout.test_item_ad_plan_layout, null, 2, null);
        }

        @Override
        public void F(BaseViewHolder holder, JsonObject item) {
            String json;
            Intrinsics.h(holder, "holder");
            if (item == null || (json = new GsonBuilder().setPrettyPrinting().create().toJson((JsonElement) item)) == null) {
                json = "";
            }
            holder.setText(R$id.tvConfig, json);
        }
    }

    public final String Q(String json) {
        Gson gsonCreate = new GsonBuilder().setPrettyPrinting().create();
        try {
            String json2 = gsonCreate.toJson(gsonCreate.fromJson(json, Object.class));
            Intrinsics.g(json2, "toJson(...)");
            return json2;
        } catch (Exception e10) {
            e10.printStackTrace();
            return "Invalid JSON String";
        }
    }

    public static final void R(TestAdSceneActivity testAdSceneActivity, View view) {
        k.d(androidx.p009lifecycle.v.a(testAdSceneActivity), null, null, new TestAdSceneActivity$onCreate$1$1(testAdSceneActivity, null), 3, null);
    }

    @Override
    public String getLogTag() {
        return "ad_";
    }

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
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        v vVarC = v.c(getLayoutInflater());
        this.binding = vVarC;
        if (vVarC == null) {
            Intrinsics.y("binding");
            vVarC = null;
        }
        setContentView(vVarC.getRoot());
        v vVar = this.binding;
        if (vVar == null) {
            Intrinsics.y("binding");
            vVar = null;
        }
        vVar.f72183b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdSceneActivity.R(this.f41213a, view);
            }
        });
        com.transsion.ad.scene.d dVar = com.transsion.ad.scene.d.f41155a;
        String str = "版本号 " + dVar.d();
        v vVar2 = this.binding;
        if (vVar2 == null) {
            Intrinsics.y("binding");
            vVar2 = null;
        }
        vVar2.f72185d.setText(str);
        a aVar = new a();
        v vVar3 = this.binding;
        if (vVar3 == null) {
            Intrinsics.y("binding");
            vVar3 = null;
        }
        RecyclerView recyclerView = vVar3.f72184c;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.setAdapter(aVar);
        JsonArray jsonArray = (JsonArray) o.d(dVar.c(), JsonArray.class);
        ArrayList arrayList = new ArrayList();
        if (jsonArray != null) {
            Iterator<JsonElement> it = jsonArray.iterator();
            while (it.hasNext()) {
                JsonElement next = it.next();
                arrayList.add(next != null ? next.getAsJsonObject() : null);
            }
        }
        aVar.n1(arrayList);
    }
}
