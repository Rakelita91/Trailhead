/* tslint:disable */
/**
 * This file was automatically generated by json-schema-to-typescript.
 * DO NOT MODIFY IT BY HAND. Instead, modify the source JSONSchema file,
 * and run json-schema-to-typescript to regenerate this file.
 */

export interface RequestBodySchema {
    price?: number;
    range: 'Short Range' | 'Medium Range' | 'Long Range';
    exteriorColor:
        | 'Pearl White'
        | 'VIP Black'
        | 'Pulsar Red'
        | 'Deep Blue'
        | 'Modern Green';
    interiorColor: 'Vegan Black' | 'Vegan White' | 'Vegan Tan';
    wheels?: 'Standard' | 'Premium';
    leadRecordId: string;
    [k: string]: unknown;
}
