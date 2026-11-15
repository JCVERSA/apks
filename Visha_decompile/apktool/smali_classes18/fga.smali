.class public abstract Lfga;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfga$b;,
        Lfga$a;
    }
.end annotation


# static fields
.field public static final a:Lfga;

.field public static final b:Lfga;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfga$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfga$a;-><init>(Lega;)V

    sput-object v0, Lfga;->a:Lfga;

    new-instance v0, Lfga$b;

    invoke-direct {v0, v1}, Lfga$b;-><init>(Lega;)V

    sput-object v0, Lfga;->b:Lfga;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lega;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfga;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lfga;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)Lfreemarker/template/MalformedTemplateNameException;
    .locals 0

    invoke-static {p0}, Lfga;->d(Ljava/lang/String;)Lfreemarker/template/MalformedTemplateNameException;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lfreemarker/template/MalformedTemplateNameException;

    const-string v1, "Null character (\\u0000) in the name; possible attack attempt"

    invoke-direct {v0, p0, v1}, Lfreemarker/template/MalformedTemplateNameException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/lang/String;)Lfreemarker/template/MalformedTemplateNameException;
    .locals 2

    new-instance v0, Lfreemarker/template/MalformedTemplateNameException;

    const-string v1, "Backing out from the root directory is not allowed"

    invoke-direct {v0, p0, v1}, Lfreemarker/template/MalformedTemplateNameException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract e(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
