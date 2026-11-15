.class public final Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a;

    invoke-direct {v0}, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a;-><init>()V

    sput-object v0, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a;->a:Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;F)Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$b;
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    const-string p0, "shaderText"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;

    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;-><init>(Ljava/lang/String;F)V

    return-object p0
.end method
