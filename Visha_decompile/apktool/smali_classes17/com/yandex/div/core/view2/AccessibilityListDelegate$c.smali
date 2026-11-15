.class public final Lcom/yandex/div/core/view2/AccessibilityListDelegate$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/AccessibilityListDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;I)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate$c;->a:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate$c;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate$c;->b:I

    return p0
.end method

.method public final b()Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate$c;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method
