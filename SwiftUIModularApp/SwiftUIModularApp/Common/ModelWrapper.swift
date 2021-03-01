import Foundation

//Generic just in case this module needs multiple models in data module
//This is used to avoid ambiguity (interface and concrete implementation have the same variable names)
struct ModelWrapper<T> {
    let model: T
}
