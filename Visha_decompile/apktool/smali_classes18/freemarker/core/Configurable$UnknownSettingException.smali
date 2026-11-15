.class public Lfreemarker/core/Configurable$UnknownSettingException;
.super Lfreemarker/core/_MiscTemplateException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/Configurable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnknownSettingException"
.end annotation


# direct methods
.method private constructor <init>(Lfreemarker/core/Environment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2
    new-instance v0, Lk0d;

    invoke-direct {v0, p2}, Lk0d;-><init>(Ljava/lang/Object;)V

    if-nez p3, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, ". You may meant: "

    aput-object v2, p2, v1

    new-instance v1, Lk0d;

    invoke-direct {v1, p3}, Lk0d;-><init>(Ljava/lang/Object;)V

    const/4 p3, 0x1

    aput-object v1, p2, p3

    :goto_0
    const-string p3, "Unknown FreeMarker configuration setting: "

    filled-new-array {p3, v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/Environment;Ljava/lang/String;Ljava/lang/String;Lve1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lfreemarker/core/Configurable$UnknownSettingException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
