.class public Lmnd;
.super Lw2d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw2d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lw2d;->b()Lkhd;

    move-result-object p0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkhd;->w(Ljava/lang/String;)V

    return-void
.end method
