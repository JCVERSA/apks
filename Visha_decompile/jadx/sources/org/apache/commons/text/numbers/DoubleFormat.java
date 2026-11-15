package org.apache.commons.text.numbers;

import androidx.exifinterface.media.ExifInterface;
import java.text.DecimalFormatSymbols;
import java.util.Objects;
import java.util.function.DoubleFunction;
import java.util.function.Function;

public enum DoubleFormat {
    PLAIN(new Function() {
        @Override
        public final Object apply(Object obj) {
            return new DoubleFormat.PlainDoubleFormat((DoubleFormat.Builder) obj);
        }
    }),
    SCIENTIFIC(new Function() {
        @Override
        public final Object apply(Object obj) {
            return new DoubleFormat.ScientificDoubleFormat((DoubleFormat.Builder) obj);
        }
    }),
    ENGINEERING(new Function() {
        @Override
        public final Object apply(Object obj) {
            return new DoubleFormat.EngineeringDoubleFormat((DoubleFormat.Builder) obj);
        }
    }),
    MIXED(new Function() {
        @Override
        public final Object apply(Object obj) {
            return new DoubleFormat.MixedDoubleFormat((DoubleFormat.Builder) obj);
        }
    });

    private final Function<Builder, DoubleFunction<String>> factory;

    public static abstract class AbstractDoubleFormat implements DoubleFunction<String>, ParsedDecimal.FormatOptions {
        private final boolean alwaysIncludeExponent;
        private final char decimalSeparator;
        private final char[] digits;
        private final char[] exponentSeparatorChars;
        private final boolean fractionPlaceholder;
        private final boolean groupThousands;
        private final char groupingSeparator;
        private final int maxPrecision;
        private final int minDecimalExponent;
        private final char minusSign;
        private final String nan;
        private final String negativeInfinity;
        private final String positiveInfinity;
        private final boolean signedZero;

        public AbstractDoubleFormat(Builder builder) {
            this.maxPrecision = builder.maxPrecision;
            this.minDecimalExponent = builder.minDecimalExponent;
            this.positiveInfinity = builder.infinity;
            this.negativeInfinity = builder.minusSign + builder.infinity;
            this.nan = builder.nan;
            this.fractionPlaceholder = builder.fractionPlaceholder;
            this.signedZero = builder.signedZero;
            this.digits = builder.digits.toCharArray();
            this.decimalSeparator = builder.decimalSeparator;
            this.groupingSeparator = builder.groupingSeparator;
            this.groupThousands = builder.groupThousands;
            this.minusSign = builder.minusSign;
            this.exponentSeparatorChars = builder.exponentSeparator.toCharArray();
            this.alwaysIncludeExponent = builder.alwaysIncludeExponent;
        }

        private String applyFinite(double d) {
            ParsedDecimal parsedDecimalFrom = ParsedDecimal.from(d);
            int iMax = Math.max(parsedDecimalFrom.getExponent(), this.minDecimalExponent);
            if (this.maxPrecision > 0) {
                iMax = Math.max((parsedDecimalFrom.getScientificExponent() - this.maxPrecision) + 1, iMax);
            }
            parsedDecimalFrom.round(iMax);
            return applyFiniteInternal(parsedDecimalFrom);
        }

        public abstract String applyFiniteInternal(ParsedDecimal parsedDecimal);

        @Override
        public char getDecimalSeparator() {
            return this.decimalSeparator;
        }

        @Override
        public char[] getDigits() {
            return this.digits;
        }

        @Override
        public char[] getExponentSeparatorChars() {
            return this.exponentSeparatorChars;
        }

        @Override
        public char getGroupingSeparator() {
            return this.groupingSeparator;
        }

        @Override
        public char getMinusSign() {
            return this.minusSign;
        }

        @Override
        public boolean isAlwaysIncludeExponent() {
            return this.alwaysIncludeExponent;
        }

        @Override
        public boolean isGroupThousands() {
            return this.groupThousands;
        }

        @Override
        public boolean isIncludeFractionPlaceholder() {
            return this.fractionPlaceholder;
        }

        @Override
        public boolean isSignedZero() {
            return this.signedZero;
        }

        @Override
        public String apply(double d) {
            if (Double.isFinite(d)) {
                return applyFinite(d);
            }
            if (Double.isInfinite(d)) {
                return d > 0.0d ? this.positiveInfinity : this.negativeInfinity;
            }
            return this.nan;
        }
    }

    public static final class Builder {
        private static final String DEFAULT_DECIMAL_DIGITS = "0123456789";
        private static final int DEFAULT_PLAIN_FORMAT_MAX_DECIMAL_EXPONENT = 6;
        private static final int DEFAULT_PLAIN_FORMAT_MIN_DECIMAL_EXPONENT = -3;
        private boolean alwaysIncludeExponent;
        private char decimalSeparator;
        private String digits;
        private String exponentSeparator;
        private final Function<Builder, DoubleFunction<String>> factory;
        private boolean fractionPlaceholder;
        private boolean groupThousands;
        private char groupingSeparator;
        private String infinity;
        private int maxPrecision;
        private int minDecimalExponent;
        private char minusSign;
        private String nan;
        private int plainFormatMaxDecimalExponent;
        private int plainFormatMinDecimalExponent;
        private boolean signedZero;

        private String getDigitString(DecimalFormatSymbols decimalFormatSymbols) {
            int zeroDigit = decimalFormatSymbols.getZeroDigit() - DEFAULT_DECIMAL_DIGITS.charAt(0);
            char[] cArr = new char[10];
            for (int i = 0; i < 10; i++) {
                cArr[i] = (char) (DEFAULT_DECIMAL_DIGITS.charAt(i) + zeroDigit);
            }
            return String.valueOf(cArr);
        }

        public Builder allowSignedZero(boolean z) {
            this.signedZero = z;
            return this;
        }

        public Builder alwaysIncludeExponent(boolean z) {
            this.alwaysIncludeExponent = z;
            return this;
        }

        public DoubleFunction<String> build() {
            return this.factory.apply(this);
        }

        public Builder decimalSeparator(char c) {
            this.decimalSeparator = c;
            return this;
        }

        public Builder digits(String str) {
            Objects.requireNonNull(str, "Digits string cannot be null");
            if (str.length() == 10) {
                this.digits = str;
                return this;
            }
            throw new IllegalArgumentException("Digits string must contain exactly 10 characters.");
        }

        public Builder exponentSeparator(String str) {
            Objects.requireNonNull(str, "Exponent separator cannot be null");
            this.exponentSeparator = str;
            return this;
        }

        public Builder formatSymbols(DecimalFormatSymbols decimalFormatSymbols) {
            Objects.requireNonNull(decimalFormatSymbols, "Decimal format symbols cannot be null");
            return digits(getDigitString(decimalFormatSymbols)).decimalSeparator(decimalFormatSymbols.getDecimalSeparator()).groupingSeparator(decimalFormatSymbols.getGroupingSeparator()).minusSign(decimalFormatSymbols.getMinusSign()).exponentSeparator(decimalFormatSymbols.getExponentSeparator()).infinity(decimalFormatSymbols.getInfinity()).nan(decimalFormatSymbols.getNaN());
        }

        public Builder groupThousands(boolean z) {
            this.groupThousands = z;
            return this;
        }

        public Builder groupingSeparator(char c) {
            this.groupingSeparator = c;
            return this;
        }

        public Builder includeFractionPlaceholder(boolean z) {
            this.fractionPlaceholder = z;
            return this;
        }

        public Builder infinity(String str) {
            Objects.requireNonNull(str, "Infinity string cannot be null");
            this.infinity = str;
            return this;
        }

        public Builder maxPrecision(int i) {
            this.maxPrecision = i;
            return this;
        }

        public Builder minDecimalExponent(int i) {
            this.minDecimalExponent = i;
            return this;
        }

        public Builder minusSign(char c) {
            this.minusSign = c;
            return this;
        }

        public Builder nan(String str) {
            Objects.requireNonNull(str, "NaN string cannot be null");
            this.nan = str;
            return this;
        }

        public Builder plainFormatMaxDecimalExponent(int i) {
            this.plainFormatMaxDecimalExponent = i;
            return this;
        }

        public Builder plainFormatMinDecimalExponent(int i) {
            this.plainFormatMinDecimalExponent = i;
            return this;
        }

        private Builder(Function<Builder, DoubleFunction<String>> function) {
            this.maxPrecision = 0;
            this.minDecimalExponent = Integer.MIN_VALUE;
            this.plainFormatMaxDecimalExponent = 6;
            this.plainFormatMinDecimalExponent = -3;
            this.infinity = "Infinity";
            this.nan = "NaN";
            this.fractionPlaceholder = true;
            this.signedZero = true;
            this.digits = DEFAULT_DECIMAL_DIGITS;
            this.decimalSeparator = '.';
            this.groupingSeparator = ',';
            this.groupThousands = false;
            this.minusSign = '-';
            this.exponentSeparator = ExifInterface.LONGITUDE_EAST;
            this.alwaysIncludeExponent = false;
            this.factory = function;
        }
    }

    public static class EngineeringDoubleFormat extends AbstractDoubleFormat {
        public EngineeringDoubleFormat(Builder builder) {
            super(builder);
        }

        @Override
        public String applyFiniteInternal(ParsedDecimal parsedDecimal) {
            return parsedDecimal.toEngineeringString(this);
        }
    }

    public static final class MixedDoubleFormat extends AbstractDoubleFormat {
        private final int plainMaxExponent;
        private final int plainMinExponent;

        public MixedDoubleFormat(Builder builder) {
            super(builder);
            this.plainMaxExponent = builder.plainFormatMaxDecimalExponent;
            this.plainMinExponent = builder.plainFormatMinDecimalExponent;
        }

        @Override
        public String applyFiniteInternal(ParsedDecimal parsedDecimal) {
            int scientificExponent = parsedDecimal.getScientificExponent();
            return (scientificExponent > this.plainMaxExponent || scientificExponent < this.plainMinExponent) ? parsedDecimal.toScientificString(this) : parsedDecimal.toPlainString(this);
        }
    }

    public static class PlainDoubleFormat extends AbstractDoubleFormat {
        public PlainDoubleFormat(Builder builder) {
            super(builder);
        }

        @Override
        public String applyFiniteInternal(ParsedDecimal parsedDecimal) {
            return parsedDecimal.toPlainString(this);
        }
    }

    public static class ScientificDoubleFormat extends AbstractDoubleFormat {
        public ScientificDoubleFormat(Builder builder) {
            super(builder);
        }

        @Override
        public String applyFiniteInternal(ParsedDecimal parsedDecimal) {
            return parsedDecimal.toScientificString(this);
        }
    }

    DoubleFormat(Function function) {
        this.factory = function;
    }

    public Builder builder() {
        return new Builder(this.factory);
    }
}
