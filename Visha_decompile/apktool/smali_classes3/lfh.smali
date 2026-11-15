.class public final synthetic Llfh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Lmfh;


# direct methods
.method public synthetic constructor <init>(Lmfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llfh;->a:Lmfh;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 0

    iget-object p0, p0, Llfh;->a:Lmfh;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lmfh;->a(Lmfh;Ljava/lang/Throwable;)Lim5;

    move-result-object p0

    return-object p0
.end method
