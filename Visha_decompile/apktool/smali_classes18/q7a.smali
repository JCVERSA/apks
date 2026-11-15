.class public Lq7a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lai1;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lai1;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq7a;->a:Lai1;

    iput p2, p0, Lq7a;->b:I

    iput p3, p0, Lq7a;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lq7a;->a:Lai1;

    invoke-interface {p0}, Lai1;->smoothCloseMenu()V

    return-void
.end method
