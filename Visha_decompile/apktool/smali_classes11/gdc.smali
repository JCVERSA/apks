.class public final Lgdc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lgdc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgdc;

    invoke-direct {v0}, Lgdc;-><init>()V

    sput-object v0, Lgdc;->a:Lgdc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;F)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->setClipToOutline(Z)V

    new-instance p0, Lbw8;

    invoke-direct {p0, p2}, Lbw8;-><init>(F)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method
