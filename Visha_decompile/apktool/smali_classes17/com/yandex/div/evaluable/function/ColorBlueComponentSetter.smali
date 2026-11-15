.class public final Lcom/yandex/div/evaluable/function/ColorBlueComponentSetter;
.super Ln81;
.source "SourceFile"


# static fields
.field public static final g:Lcom/yandex/div/evaluable/function/ColorBlueComponentSetter;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/div/evaluable/function/ColorBlueComponentSetter;

    invoke-direct {v0}, Lcom/yandex/div/evaluable/function/ColorBlueComponentSetter;-><init>()V

    sput-object v0, Lcom/yandex/div/evaluable/function/ColorBlueComponentSetter;->g:Lcom/yandex/div/evaluable/function/ColorBlueComponentSetter;

    const-string v0, "setColorBlue"

    sput-object v0, Lcom/yandex/div/evaluable/function/ColorBlueComponentSetter;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/yandex/div/evaluable/function/ColorBlueComponentSetter$1;->INSTANCE:Lcom/yandex/div/evaluable/function/ColorBlueComponentSetter$1;

    invoke-direct {p0, v0}, Ln81;-><init>(Ls74;)V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/yandex/div/evaluable/function/ColorBlueComponentSetter;->h:Ljava/lang/String;

    return-object p0
.end method
