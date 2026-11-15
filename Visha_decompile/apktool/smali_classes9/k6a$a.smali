.class public Lk6a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk6a;->k(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Landroid/content/Context;Lk6a$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk6a$d;


# direct methods
.method public constructor <init>(Lk6a$d;)V
    .locals 0

    iput-object p1, p0, Lk6a$a;->a:Lk6a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V
    .locals 0

    return-void
.end method

.method public c(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V
    .locals 0

    iget-object p0, p0, Lk6a$a;->a:Lk6a$d;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lk6a$d;->b(I)V

    :cond_0
    return-void
.end method
