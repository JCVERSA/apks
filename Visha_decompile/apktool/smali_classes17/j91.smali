.class public final Lj91;
.super Ll91;
.source "SourceFile"


# static fields
.field public static final g:Lj91;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj91;

    invoke-direct {v0}, Lj91;-><init>()V

    sput-object v0, Lj91;->g:Lj91;

    const-string v0, "setColorBlue"

    sput-object v0, Lj91;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/yandex/div/evaluable/function/ColorBlueComponentSetter;->g:Lcom/yandex/div/evaluable/function/ColorBlueComponentSetter;

    invoke-direct {p0, v0}, Ll91;-><init>(Ln81;)V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lj91;->h:Ljava/lang/String;

    return-object p0
.end method
