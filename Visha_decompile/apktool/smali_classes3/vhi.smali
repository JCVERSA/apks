.class public final Lvhi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lvhi;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a()Lxhi;
    .locals 3

    iget-object v0, p0, Lvhi;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    new-instance v0, Lxhi;

    iget-object v1, p0, Lvhi;->a:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lxhi;-><init>(Ljava/util/Map;Lwhi;)V

    iput-object v2, p0, Lvhi;->a:Ljava/util/HashMap;

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot call build() twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
