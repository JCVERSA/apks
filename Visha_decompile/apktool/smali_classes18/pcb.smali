.class public final synthetic Lpcb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lqcb;


# direct methods
.method public synthetic constructor <init>(Lqcb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpcb;->b:Lqcb;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lpcb;->b:Lqcb;

    check-cast p1, Ljf5;

    invoke-static {p0, p1}, Lqcb;->d(Lqcb;Ljf5;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
