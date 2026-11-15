.class public final Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeaturesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;",
        "Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeaturesOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;->access$000()Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLegacyClosedEnum()Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures$Builder;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;->access$200(Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;)V

    return-object p0
.end method

.method public clearUtf8Validation()Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures$Builder;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;->access$400(Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;)V

    return-object p0
.end method

.method public getLegacyClosedEnum()Z
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;->getLegacyClosedEnum()Z

    move-result p0

    return p0
.end method

.method public getUtf8Validation()Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures$Utf8Validation;
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;->getUtf8Validation()Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures$Utf8Validation;

    move-result-object p0

    return-object p0
.end method

.method public hasLegacyClosedEnum()Z
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;->hasLegacyClosedEnum()Z

    move-result p0

    return p0
.end method

.method public hasUtf8Validation()Z
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;->hasUtf8Validation()Z

    move-result p0

    return p0
.end method

.method public setLegacyClosedEnum(Z)Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures$Builder;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;->access$100(Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;Z)V

    return-object p0
.end method

.method public setUtf8Validation(Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures$Utf8Validation;)Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures$Builder;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;->access$300(Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures$Utf8Validation;)V

    return-object p0
.end method
