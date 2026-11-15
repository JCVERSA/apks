.class public Loid$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final synthetic b:Loid;


# direct methods
.method public constructor <init>(Loid;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loid$g;->b:Loid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Loid;Loid$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Loid$g;-><init>(Loid;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Loid$g;->b:Loid;

    invoke-static {p0, p1}, Loid;->l(Loid;Landroid/view/View;)V

    return-void
.end method
