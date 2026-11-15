.class public Lcom/transsion/hubsdk/core/tranthubutils/TranThubAppProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranAppPropertiesAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/tranthubutils/TranAppProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/tranthubutils/TranAppProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/tranthubutils/TranAppProperties;->initialize(Ljava/lang/String;)V

    return-void
.end method
