.class public Lqj5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqj5;->F0()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
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

    iput-object p1, p0, Lqj5$a;->b:Lqj5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhcb;)Ljava/lang/Boolean;
    .locals 0

    invoke-interface {p1}, Lhcb;->A()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lhcb;

    invoke-virtual {p0, p1}, Lqj5$a;->a(Lhcb;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
