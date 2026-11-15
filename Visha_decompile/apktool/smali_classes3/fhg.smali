.class public final synthetic Lfhg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liue;


# instance fields
.field public final synthetic b:Lejf;


# direct methods
.method public synthetic constructor <init>(Lejf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfhg;->b:Lejf;

    return-void
.end method


# virtual methods
.method public final zzdn(Lhue;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    iget-boolean p1, p1, Lhue;->j:Z

    if-eq v1, p1, :cond_0

    const-string p1, "0"

    goto :goto_0

    :cond_0
    const-string p1, "1"

    :goto_0
    const-string v1, "isVisible"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lfhg;->b:Lejf;

    const-string p1, "onAdVisibilityChanged"

    invoke-interface {p0, p1, v0}, Lp5f;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
