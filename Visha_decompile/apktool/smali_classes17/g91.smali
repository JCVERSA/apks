.class public final Lg91;
.super Lk91;
.source "SourceFile"


# static fields
.field public static final g:Lg91;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg91;

    invoke-direct {v0}, Lg91;-><init>()V

    sput-object v0, Lg91;->g:Lg91;

    const-string v0, "getColorAlpha"

    sput-object v0, Lg91;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/yandex/div/evaluable/function/ColorAlphaComponentGetter;->g:Lcom/yandex/div/evaluable/function/ColorAlphaComponentGetter;

    invoke-direct {p0, v0}, Lk91;-><init>(Lm81;)V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lg91;->h:Ljava/lang/String;

    return-object p0
.end method
