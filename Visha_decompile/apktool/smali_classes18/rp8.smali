.class public final Lrp8;
.super Lqp8;
.source "SourceFile"

# interfaces
.implements Lm65;


# instance fields
.field public final c:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Lby6;Ljava/lang/annotation/Annotation;)V
    .locals 1

    const-string v0, "annotation"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lqp8;-><init>(Lby6;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lrp8;->c:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public a()Lk65;
    .locals 1

    new-instance v0, Lpp8;

    iget-object p0, p0, Lrp8;->c:Ljava/lang/annotation/Annotation;

    invoke-direct {v0, p0}, Lpp8;-><init>(Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method
