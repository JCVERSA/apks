.class public final synthetic Lau5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgm9;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lau5;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lbt5;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lau5;->a:I

    invoke-static {p0, p1}, Lcom/transsion/widgets/LottieUtils;->d(ILbt5;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
