.class public Lf43$f;
.super Laz3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf43;-><init>(Lfz3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lfz3;

.field public final synthetic c:Lf43;


# direct methods
.method public constructor <init>(Lf43;Ljava/lang/String;Lfz3;)V
    .locals 0

    iput-object p1, p0, Lf43$f;->c:Lf43;

    iput-object p3, p0, Lf43$f;->b:Lfz3;

    invoke-direct {p0, p2}, Laz3;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)F
    .locals 0

    iget-object p0, p0, Lf43$f;->b:Lfz3;

    invoke-virtual {p0}, Lfz3;->a()F

    move-result p0

    return p0
.end method

.method public b(Ljava/lang/Object;F)V
    .locals 0

    iget-object p0, p0, Lf43$f;->b:Lfz3;

    invoke-virtual {p0, p2}, Lfz3;->b(F)V

    return-void
.end method
