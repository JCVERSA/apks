.class public Lfreemarker/template/utility/UnrecognizedTimeZoneException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final timeZoneName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unrecognized time zone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ln0a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lfreemarker/template/utility/UnrecognizedTimeZoneException;->timeZoneName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTimeZoneName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/template/utility/UnrecognizedTimeZoneException;->timeZoneName:Ljava/lang/String;

    return-object p0
.end method
