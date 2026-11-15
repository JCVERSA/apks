.class public Lqj5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqj5;->c0()Linb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lqj5;


# direct methods
.method public constructor <init>(Lqj5;)V
    .locals 0

    iput-object p1, p0, Lqj5$b;->b:Lqj5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lsm9;)Lsm9;
    .locals 0

    iget-object p0, p0, Lqj5$b;->b:Lqj5;

    invoke-static {p0, p1}, Lqj5;->C0(Lqj5;Lsm9;)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lsm9;

    invoke-virtual {p0, p1}, Lqj5$b;->a(Lsm9;)Lsm9;

    move-result-object p0

    return-object p0
.end method
