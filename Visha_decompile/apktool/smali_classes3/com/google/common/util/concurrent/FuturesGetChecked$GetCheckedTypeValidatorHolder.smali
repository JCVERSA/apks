.class public abstract Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/FuturesGetChecked;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetCheckedTypeValidatorHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder$WeakSetValidator;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/util/concurrent/FuturesGetChecked$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder;->a()Lcom/google/common/util/concurrent/FuturesGetChecked$a;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder;->a:Lcom/google/common/util/concurrent/FuturesGetChecked$a;

    return-void
.end method

.method public static a()Lcom/google/common/util/concurrent/FuturesGetChecked$a;
    .locals 1

    invoke-static {}, Lcom/google/common/util/concurrent/FuturesGetChecked;->o()Lcom/google/common/util/concurrent/FuturesGetChecked$a;

    move-result-object v0

    return-object v0
.end method
