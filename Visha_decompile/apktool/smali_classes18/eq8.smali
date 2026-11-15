.class public final Leq8;
.super Lqp8;
.source "SourceFile"

# interfaces
.implements Lp75;


# instance fields
.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lby6;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lqp8;-><init>(Lby6;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Leq8;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Leq8;->c:Ljava/lang/Object;

    return-object p0
.end method
