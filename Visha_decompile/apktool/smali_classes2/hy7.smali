.class public Lhy7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonb;


# static fields
.field public static final a:Lhy7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhy7;

    invoke-direct {v0}, Lhy7;-><init>()V

    sput-object v0, Lhy7;->a:Lhy7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lhy7;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;
    .locals 0

    invoke-static {p1, p2}, Llc5;->e(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method
