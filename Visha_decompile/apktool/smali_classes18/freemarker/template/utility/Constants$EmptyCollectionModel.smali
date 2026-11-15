.class Lfreemarker/template/utility/Constants$EmptyCollectionModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbfa;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/utility/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyCollectionModel"
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
    invoke-direct {p0}, Lfreemarker/template/utility/Constants$EmptyCollectionModel;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Lbga;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    sget-object p0, Lfreemarker/template/utility/Constants;->g:Lbga;

    return-object p0
.end method
