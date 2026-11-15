.class public abstract Lorg/libtorrent4j/alerts/AbstractAlert;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/libtorrent4j/alerts/Alert;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/libtorrent4j/swig/alert;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/libtorrent4j/alerts/Alert<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final alert:Lorg/libtorrent4j/swig/alert;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final type:Lorg/libtorrent4j/alerts/AlertType;


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/alert;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/alert;->type()I

    move-result p1

    invoke-static {p1}, Lorg/libtorrent4j/alerts/AlertType;->fromSwig(I)Lorg/libtorrent4j/alerts/AlertType;

    move-result-object p1

    iput-object p1, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->type:Lorg/libtorrent4j/alerts/AlertType;

    return-void
.end method


# virtual methods
.method public category()Lorg/libtorrent4j/swig/alert_category_t;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/alert;->category()Lorg/libtorrent4j/swig/alert_category_t;

    move-result-object p0

    return-object p0
.end method

.method public message()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/alert;->message()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final swig()Lorg/libtorrent4j/swig/alert;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    return-object p0
.end method

.method public timestamp()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/alert;->get_timestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/libtorrent4j/alerts/AbstractAlert;->type()Lorg/libtorrent4j/alerts/AlertType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/libtorrent4j/alerts/AbstractAlert;->what()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/libtorrent4j/alerts/AbstractAlert;->message()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public type()Lorg/libtorrent4j/alerts/AlertType;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->type:Lorg/libtorrent4j/alerts/AlertType;

    return-object p0
.end method

.method public what()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/alert;->what()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
