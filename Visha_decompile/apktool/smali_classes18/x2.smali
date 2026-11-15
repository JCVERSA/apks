.class public abstract Lx2;
.super Lr14;
.source "SourceFile"


# instance fields
.field public final c:Lr14;


# direct methods
.method public constructor <init>(Lr14;)V
    .locals 1

    invoke-direct {p0}, Lr14;-><init>()V

    const-string v0, "source is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr14;

    iput-object p1, p0, Lx2;->c:Lr14;

    return-void
.end method
