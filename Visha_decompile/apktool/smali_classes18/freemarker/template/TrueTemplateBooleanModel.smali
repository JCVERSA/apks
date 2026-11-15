.class final Lfreemarker/template/TrueTemplateBooleanModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/SerializableTemplateBooleanModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lfreemarker/template/a;->z6:Lfreemarker/template/a;

    return-object p0
.end method


# virtual methods
.method public getAsBoolean()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
