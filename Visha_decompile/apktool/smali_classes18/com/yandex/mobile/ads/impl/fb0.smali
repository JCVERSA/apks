.class public final Lcom/yandex/mobile/ads/impl/fb0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/fb0$a;,
        Lcom/yandex/mobile/ads/impl/fb0$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/z7;

.field private final b:Lcom/yandex/mobile/ads/impl/v50;

.field private final c:Lpc9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpc9;"
        }
    .end annotation
.end field

.field private final d:Lpc9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpc9;"
        }
    .end annotation
.end field

.field private final e:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/yandex/mobile/ads/impl/fb0$a;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/z7;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/z7;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/fb0;->a:Lcom/yandex/mobile/ads/impl/z7;

    .line 3
    new-instance v1, Lcom/yandex/mobile/ads/impl/v50;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/v50;-><init>()V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/fb0;->b:Lcom/yandex/mobile/ads/impl/v50;

    .line 4
    invoke-static {}, Lky5;->e()Ljava/util/Map;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ad_unit_id"

    invoke-direct {p0, v1, v3, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->H0()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "width"

    invoke-direct {p0, v1, v3, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->K()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "height"

    invoke-direct {p0, v1, v3, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ad_size_type"

    invoke-direct {p0, v1, v3, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->a0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "orientation"

    invoke-direct {p0, v1, v3, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->g()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ads_count"

    invoke-direct {p0, v1, v3, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->q0()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "screen_width"

    invoke-direct {p0, v1, v3, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->p0()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "screen_height"

    invoke-direct {p0, v1, v3, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->n0()Ljava/lang/Float;

    move-result-object v2

    const-string v3, "scalefactor"

    invoke-direct {p0, v1, v3, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ad_type"

    invoke-direct {p0, v1, v3, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->X()Ljava/lang/String;

    move-result-object v2

    const-string v3, "network_type"

    invoke-direct {p0, v1, v3, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->q()Ljava/lang/String;

    move-result-object v2

    const-string v3, "carrier"

    invoke-direct {p0, v1, v3, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->H()Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "dnt"

    invoke-direct {p0, v1, v3, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 18
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->B()Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "gaid_reset"

    invoke-direct {p0, v1, v3, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 19
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->M()Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "huawei_dnt"

    invoke-direct {p0, v1, v3, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 20
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->p()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "battery_charge"

    invoke-direct {p0, v1, v3, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->N()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image_sizes"

    invoke-direct {p0, v1, v3, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "response_ad_format"

    invoke-direct {p0, v1, v3, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->w0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ad_source"

    invoke-direct {p0, v1, v3, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->x()Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug_uid"

    invoke-direct {p0, v1, v3, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->B0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "user_id"

    invoke-direct {p0, v1, v3, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->Y()Ljava/lang/String;

    move-result-object v2

    const-string v3, "open_bidding_data"

    invoke-direct {p0, v1, v3, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->v0()Ljava/lang/Long;

    move-result-object v2

    const-string v3, "session_random"

    invoke-direct {p0, v1, v3, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->s()Ljava/lang/String;

    move-result-object v2

    const-string v3, "charset"

    invoke-direct {p0, v1, v3, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/z7;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->A()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/z7;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->b0()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/z7;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->c0()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/z7;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->S()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/z7;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->W()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/z7;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->J0()Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 35
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->Q()Ljava/lang/String;

    move-result-object v0

    const-string v2, "locale"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->k()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content_language"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->e0()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    const/16 v10, 0x3e

    const/4 v11, 0x0

    const-string v4, ":"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "device_languages"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->j()Ljava/lang/String;

    move-result-object v0

    const-string v2, "app_id"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->m()Ljava/lang/String;

    move-result-object v0

    const-string v2, "app_version_code"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->n()Ljava/lang/String;

    move-result-object v0

    const-string v2, "app_version_name"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->l()Ljava/lang/String;

    move-result-object v0

    const-string v2, "appmetrica_version"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->o0()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "screen_dpi"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->k0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "safe_area_inset_left"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->m0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "safe_area_inset_top"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->l0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "safe_area_inset_right"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->j0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "safe_area_inset_bottom"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->A0()Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "user_consent"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 48
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->C()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gdpr"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->D()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gdpr_consent"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->t()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "cmp_present"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 51
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->h0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "parsed_purpose_consents"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->D0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "parsed_vendor_consents"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "addtl_consent"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->J()Ljava/lang/String;

    move-result-object v0

    const-string v2, "bidding_data"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->g0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "prefetched_mediation_data"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->u()Ljava/lang/String;

    move-result-object v0

    const-string v2, "connected_network_ids"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->r0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sdk_version"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->s0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sdk_version_name"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    const-string v0, "sdk_vendor"

    const-string v2, "yandex"

    invoke-direct {p0, v1, v0, v2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->f0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "preferred_theme"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->z()Ljava/lang/String;

    move-result-object v0

    const-string v2, "device_theme"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->i()Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "age_restricted_user"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 63
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->E0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "view_size_info"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->G0()Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "web_view_available"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 65
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->x0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "startup_version"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->u0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "session-data"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->z0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "user-agent"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->t0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "server_side_client_ip"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->O()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ipv6"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->y0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "stub_reason"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->F()Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "gms_available"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 72
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->Z()Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "opt_out"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 73
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->F0()Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "vpn_enabled"

    invoke-direct {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 74
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->d0()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/util/HashMap;)V

    .line 75
    invoke-direct {p0, v1, p1}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/fb0$a;)V

    .line 76
    invoke-static {v1}, Lky5;->d(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lmy5;->D(Ljava/util/Map;)Lpc9;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/fb0;->c:Lpc9;

    .line 78
    invoke-static {}, Lky5;->e()Ljava/util/Map;

    move-result-object v0

    .line 79
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->f()Ljava/util/HashMap;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 82
    :cond_1
    invoke-static {v0}, Lky5;->d(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 83
    invoke-static {p1}, Lmy5;->D(Ljava/util/Map;)Lpc9;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fb0;->d:Lpc9;

    .line 84
    new-instance p1, Lcom/yandex/mobile/ads/impl/fb0$c;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/fb0$c;-><init>(Lcom/yandex/mobile/ads/impl/fb0;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fb0;->e:Lyi5;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/fb0$a;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/fb0;-><init>(Lcom/yandex/mobile/ads/impl/fb0$a;)V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/fb0;)Lpc9;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fb0;->d:Lpc9;

    return-object p0
.end method

.method private final a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/fb0$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/fb0$a;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->I()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "age"

    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->E()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gender"

    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->v()Ljava/lang/String;

    move-result-object v0

    const-string v1, "context_query"

    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->w()Ljava/lang/String;

    move-result-object v0

    const-string v1, "context_taglist"

    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->G()Ljava/lang/String;

    move-result-object v0

    const-string v1, "google_aid"

    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->L()Ljava/lang/String;

    move-result-object v0

    const-string v1, "huawei_oaid"

    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->C0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uuid"

    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->T()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mauid"

    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "autograb"

    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fb0;->a:Lcom/yandex/mobile/ads/impl/z7;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/z7;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->y()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->U()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mcc"

    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->V()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mnc"

    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->r()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellid"

    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->P()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lac"

    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->I0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi"

    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->a()Lcom/yandex/mobile/ads/impl/v7;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/v7;->f()Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "precision"

    const-string v2, "location_timestamp"

    const-string v3, "lon"

    const-string v4, "lat"

    if-eqz v0, :cond_1

    .line 19
    sget p2, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/pw1;->d()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 20
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v4, p2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v3, p2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v2, p2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result p2

    float-to-int p2, p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v1, p2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->R()Landroid/location/Location;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 25
    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pw1;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v4, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v3, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v2, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result p2

    float-to-int p2, p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v1, p2}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 32
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 33
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fb0;->b:Lcom/yandex/mobile/ads/impl/v50;

    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/v50;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 35
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, ":"

    invoke-static {p0, p2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 37
    :goto_0
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private final a(Ljava/util/Map;Ljava/util/HashMap;)V
    .locals 2

    .line 30
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/fb0;)Lpc9;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fb0;->c:Lpc9;

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fb0;->e:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
