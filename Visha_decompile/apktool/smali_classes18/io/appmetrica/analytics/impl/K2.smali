.class public final Lio/appmetrica/analytics/impl/K2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:Lio/appmetrica/analytics/impl/bn;

.field public final a:Lio/appmetrica/analytics/impl/i;

.field public final b:Lio/appmetrica/analytics/impl/bn;

.field public final c:Lio/appmetrica/analytics/impl/bn;

.field public final d:Lio/appmetrica/analytics/impl/bn;

.field public final e:Lio/appmetrica/analytics/impl/bn;

.field public final f:Lio/appmetrica/analytics/impl/bn;

.field public final g:Lio/appmetrica/analytics/impl/bn;

.field public final h:Lio/appmetrica/analytics/impl/bn;

.field public final i:Lio/appmetrica/analytics/impl/bn;

.field public final j:Lio/appmetrica/analytics/impl/bn;

.field public final k:Lio/appmetrica/analytics/impl/bn;

.field public final l:Lio/appmetrica/analytics/impl/bn;

.field public final m:Lio/appmetrica/analytics/impl/bn;

.field public final n:Lio/appmetrica/analytics/impl/Rd;

.field public final o:Lio/appmetrica/analytics/impl/Rd;

.field public final p:Lio/appmetrica/analytics/impl/bn;

.field public final q:Lio/appmetrica/analytics/impl/bn;

.field public final r:Lio/appmetrica/analytics/impl/bn;

.field public final s:Lio/appmetrica/analytics/impl/bn;

.field public final t:Lio/appmetrica/analytics/impl/bn;

.field public final u:Lio/appmetrica/analytics/impl/bn;

.field public final v:Lio/appmetrica/analytics/impl/bn;

.field public final w:Lio/appmetrica/analytics/impl/bn;

.field public final x:Lio/appmetrica/analytics/impl/bn;

.field public final y:Lio/appmetrica/analytics/impl/bn;

.field public final z:Lio/appmetrica/analytics/impl/bn;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/q0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/i;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/i;-><init>(Lio/appmetrica/analytics/impl/q0;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/K2;->a:Lio/appmetrica/analytics/impl/i;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Td;

    const-string v1, "Config"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->b:Lio/appmetrica/analytics/impl/bn;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Td;

    const-string v1, "Activity"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->c:Lio/appmetrica/analytics/impl/bn;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Td;

    const-string v1, "Intent"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->d:Lio/appmetrica/analytics/impl/bn;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Td;

    const-string v1, "Application"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->e:Lio/appmetrica/analytics/impl/bn;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Td;

    const-string v1, "Context"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->f:Lio/appmetrica/analytics/impl/bn;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Td;

    const-string v1, "Deeplink listener"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->g:Lio/appmetrica/analytics/impl/bn;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Td;

    const-string v1, "Reporter Config"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->h:Lio/appmetrica/analytics/impl/bn;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Rd;

    const-string v1, "Deeplink"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Rd;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->i:Lio/appmetrica/analytics/impl/bn;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Rd;

    const-string v1, "Referral url"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Rd;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->j:Lio/appmetrica/analytics/impl/bn;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/b0;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/b0;-><init>()V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->k:Lio/appmetrica/analytics/impl/bn;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Td;

    const-string v1, "Key"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->l:Lio/appmetrica/analytics/impl/bn;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Td;

    const-string v1, "WebView"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->m:Lio/appmetrica/analytics/impl/bn;

    new-instance p1, Lio/appmetrica/analytics/impl/Rd;

    const-string v0, "value"

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Rd;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->n:Lio/appmetrica/analytics/impl/Rd;

    new-instance p1, Lio/appmetrica/analytics/impl/Rd;

    const-string v0, "name"

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Rd;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->o:Lio/appmetrica/analytics/impl/Rd;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Td;

    const-string v1, "AppMetricaDeviceIdentifiers callback"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->p:Lio/appmetrica/analytics/impl/bn;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Td;

    const-string v1, "ANR listener"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->q:Lio/appmetrica/analytics/impl/bn;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Td;

    const-string v1, "External attribution"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->r:Lio/appmetrica/analytics/impl/bn;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Rd;

    const-string v1, "Event name"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Rd;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->s:Lio/appmetrica/analytics/impl/bn;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Rd;

    const-string v1, "Error message"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Rd;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->t:Lio/appmetrica/analytics/impl/bn;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Rd;

    const-string v1, "Error identifier"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Rd;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->u:Lio/appmetrica/analytics/impl/bn;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Td;

    const-string v1, "Unhandled exception"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Td;

    const-string v1, "Throwable"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->v:Lio/appmetrica/analytics/impl/bn;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Td;

    const-string v1, "User profile"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->w:Lio/appmetrica/analytics/impl/bn;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Td;

    const-string v1, "Revenue"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->x:Lio/appmetrica/analytics/impl/bn;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Td;

    const-string v1, "AdRevenue"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->y:Lio/appmetrica/analytics/impl/bn;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Td;

    const-string v1, "ECommerceEvent"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->z:Lio/appmetrica/analytics/impl/bn;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Td;

    const-string v1, "Anr all threads"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K2;->A:Lio/appmetrica/analytics/impl/bn;

    return-void
.end method
