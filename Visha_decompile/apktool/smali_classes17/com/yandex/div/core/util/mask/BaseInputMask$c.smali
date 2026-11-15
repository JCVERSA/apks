.class public final Lcom/yandex/div/core/util/mask/BaseInputMask$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/util/mask/BaseInputMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:C

.field public final b:Ljava/lang/String;

.field public final c:C


# direct methods
.method public constructor <init>(CLjava/lang/String;C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lcom/yandex/div/core/util/mask/BaseInputMask$c;->a:C

    iput-object p2, p0, Lcom/yandex/div/core/util/mask/BaseInputMask$c;->b:Ljava/lang/String;

    iput-char p3, p0, Lcom/yandex/div/core/util/mask/BaseInputMask$c;->c:C

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/util/mask/BaseInputMask$c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b()C
    .locals 0

    iget-char p0, p0, Lcom/yandex/div/core/util/mask/BaseInputMask$c;->a:C

    return p0
.end method

.method public final c()C
    .locals 0

    iget-char p0, p0, Lcom/yandex/div/core/util/mask/BaseInputMask$c;->c:C

    return p0
.end method
