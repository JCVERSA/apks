.class public Lcom/transsion/playercommon/activities/BaseActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/activities/BaseActivity;->adaptForcedEdgeToEdge()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/activities/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/activities/BaseActivity$a;->a:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseActivity$a;->a:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/activities/BaseActivity;->fitWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)V

    return-object p2
.end method
