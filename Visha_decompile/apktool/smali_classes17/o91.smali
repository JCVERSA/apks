.class public final Lo91;
.super Lk91;
.source "SourceFile"


# static fields
.field public static final g:Lo91;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo91;

    invoke-direct {v0}, Lo91;-><init>()V

    sput-object v0, Lo91;->g:Lo91;

    const-string v0, "getColorRed"

    sput-object v0, Lo91;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/yandex/div/evaluable/function/ColorRedComponentGetter;->g:Lcom/yandex/div/evaluable/function/ColorRedComponentGetter;

    invoke-direct {p0, v0}, Lk91;-><init>(Lm81;)V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lo91;->h:Ljava/lang/String;

    return-object p0
.end method
