.class public final Lcom/yandex/div/histogram/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/histogram/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/histogram/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/yandex/div/histogram/a$a;->c()V

    return-void
.end method

.method public static final c()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lar0;
    .locals 0

    const-string p0, "histogramName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lwk1;

    invoke-direct {p0}, Lwk1;-><init>()V

    return-object p0
.end method
