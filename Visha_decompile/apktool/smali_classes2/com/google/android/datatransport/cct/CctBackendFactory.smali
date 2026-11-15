.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La50;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lgl1;)Lz8b;
    .locals 2

    new-instance p0, Lbs0;

    invoke-virtual {p1}, Lgl1;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lgl1;->e()Lhy0;

    move-result-object v1

    invoke-virtual {p1}, Lgl1;->d()Lhy0;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lbs0;-><init>(Landroid/content/Context;Lhy0;Lhy0;)V

    return-object p0
.end method
