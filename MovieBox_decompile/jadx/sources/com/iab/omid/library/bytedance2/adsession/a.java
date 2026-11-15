package com.iab.omid.library.bytedance2.adsession;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.iab.omid.library.bytedance2.internal.c;
import com.iab.omid.library.bytedance2.internal.e;
import com.iab.omid.library.bytedance2.internal.f;
import com.iab.omid.library.bytedance2.internal.i;
import com.iab.omid.library.bytedance2.publisher.AdSessionStatePublisher;
import com.iab.omid.library.bytedance2.publisher.b;
import com.iab.omid.library.bytedance2.utils.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;

public class a extends AdSession {

    private final AdSessionContext f32575a;

    private final AdSessionConfiguration f32576b;

    private final f f32577c;

    private com.iab.omid.library.bytedance2.weakreference.a f32578d;

    private AdSessionStatePublisher f32579e;

    private boolean f32580f;

    private boolean f32581g;

    private final String f32582h;

    private boolean f32583i;

    private boolean f32584j;

    private PossibleObstructionListener f32585k;

    a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        this(adSessionConfiguration, adSessionContext, UUID.randomUUID().toString());
    }

    private void a() {
        if (this.f32583i) {
            throw new IllegalStateException("Impression event can only be sent once");
        }
    }

    private void b() {
        if (this.f32584j) {
            throw new IllegalStateException("Loaded event can only be sent once");
        }
    }

    @Override
    public void addFriendlyObstruction(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        if (this.f32581g) {
            return;
        }
        this.f32577c.a(view, friendlyObstructionPurpose, str);
    }

    public View c() {
        return this.f32578d.get();
    }

    public List<e> d() {
        return this.f32577c.a();
    }

    public boolean e() {
        return this.f32585k != null;
    }

    @Override
    public void error(ErrorType errorType, String str) {
        if (this.f32581g) {
            throw new IllegalStateException("AdSession is finished");
        }
        g.a(errorType, "Error type is null");
        g.a(str, "Message is null");
        getAdSessionStatePublisher().a(errorType, str);
    }

    public boolean f() {
        return this.f32580f && !this.f32581g;
    }

    @Override
    public void finish() {
        if (this.f32581g) {
            return;
        }
        this.f32578d.clear();
        removeAllFriendlyObstructions();
        this.f32581g = true;
        getAdSessionStatePublisher().f();
        c.c().b(this);
        getAdSessionStatePublisher().b();
        this.f32579e = null;
        this.f32585k = null;
    }

    public boolean g() {
        return this.f32581g;
    }

    @Override
    public String getAdSessionId() {
        return this.f32582h;
    }

    @Override
    public AdSessionStatePublisher getAdSessionStatePublisher() {
        return this.f32579e;
    }

    public boolean h() {
        return this.f32576b.isNativeImpressionOwner();
    }

    public boolean i() {
        return this.f32576b.isNativeMediaEventsOwner();
    }

    public boolean j() {
        return this.f32580f;
    }

    void k() {
        a();
        getAdSessionStatePublisher().g();
        this.f32583i = true;
    }

    void l() {
        b();
        getAdSessionStatePublisher().h();
        this.f32584j = true;
    }

    @Override
    public void registerAdView(View view) {
        if (this.f32581g) {
            return;
        }
        g.a(view, "AdView is null");
        if (c() == view) {
            return;
        }
        b(view);
        getAdSessionStatePublisher().a();
        a(view);
    }

    @Override
    public void removeAllFriendlyObstructions() {
        if (this.f32581g) {
            return;
        }
        this.f32577c.b();
    }

    @Override
    public void removeFriendlyObstruction(View view) {
        if (this.f32581g) {
            return;
        }
        this.f32577c.c(view);
    }

    @Override
    public void setPossibleObstructionListener(PossibleObstructionListener possibleObstructionListener) {
        this.f32585k = possibleObstructionListener;
    }

    @Override
    public void start() {
        if (this.f32580f) {
            return;
        }
        this.f32580f = true;
        c.c().c(this);
        this.f32579e.a(i.c().b());
        this.f32579e.a(com.iab.omid.library.bytedance2.internal.a.a().b());
        this.f32579e.a(this, this.f32575a);
    }

    a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext, String str) {
        this.f32577c = new f();
        this.f32580f = false;
        this.f32581g = false;
        this.f32576b = adSessionConfiguration;
        this.f32575a = adSessionContext;
        this.f32582h = str;
        b(null);
        this.f32579e = (adSessionContext.getAdSessionContextType() == AdSessionContextType.HTML || adSessionContext.getAdSessionContextType() == AdSessionContextType.JAVASCRIPT) ? new com.iab.omid.library.bytedance2.publisher.a(str, adSessionContext.getWebView()) : new b(str, adSessionContext.getInjectedResourcesMap(), adSessionContext.getOmidJsScriptContent());
        this.f32579e.i();
        c.c().a(this);
        this.f32579e.a(adSessionConfiguration);
    }

    private void a(View view) {
        Collection<a> collectionB = c.c().b();
        if (collectionB == null || collectionB.isEmpty()) {
            return;
        }
        for (a aVar : collectionB) {
            if (aVar != this && aVar.c() == view) {
                aVar.f32578d.clear();
            }
        }
    }

    private void b(View view) {
        this.f32578d = new com.iab.omid.library.bytedance2.weakreference.a(view);
    }

    public void a(List<com.iab.omid.library.bytedance2.weakreference.a> list) {
        if (e()) {
            ArrayList arrayList = new ArrayList();
            Iterator<com.iab.omid.library.bytedance2.weakreference.a> it = list.iterator();
            while (it.hasNext()) {
                View view = it.next().get();
                if (view != null) {
                    arrayList.add(view);
                }
            }
            this.f32585k.onPossibleObstructionsDetected(this.f32582h, arrayList);
        }
    }

    void a(@NonNull JSONObject jSONObject) {
        b();
        getAdSessionStatePublisher().a(jSONObject);
        this.f32584j = true;
    }
}
