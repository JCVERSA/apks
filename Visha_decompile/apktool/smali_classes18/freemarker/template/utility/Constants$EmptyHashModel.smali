.class Lfreemarker/template/utility/Constants$EmptyHashModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpfa;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/utility/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyHashModel"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsf1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lfreemarker/template/utility/Constants$EmptyHashModel;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lzfa;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public keys()Lbfa;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    sget-object p0, Lfreemarker/template/utility/Constants;->h:Lbfa;

    return-object p0
.end method

.method public size()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public values()Lbfa;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    sget-object p0, Lfreemarker/template/utility/Constants;->h:Lbfa;

    return-object p0
.end method
