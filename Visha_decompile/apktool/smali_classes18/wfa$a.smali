.class public Lwfa$a;
.super Lwfa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwfa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lwfa;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lvfa;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lwfa$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lsfa;)Lufa;
    .locals 1

    invoke-virtual {p1}, Lsfa;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lsfa;->b()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lsfa;->d(Ljava/lang/String;Ljava/util/Locale;)Lufa;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "TemplateLookupStrategy.DEFAULT_2_3_0"

    return-object p0
.end method
