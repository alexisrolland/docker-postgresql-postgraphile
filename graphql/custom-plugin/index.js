const { makeWrapResolversPlugin } = require("graphile-utils");

// Create custom wrapper for resolver createUser
const createUserResolverWrapper = () => {
    return async (resolve, source, args, context, resolveInfo) => {
        // You can do something before the resolver executes
        console.info("Hello world!");
        console.info(args);

        // Let resolver execute against database
        const result = await resolve();

        // You can do something after the resolver executes
        console.info("Hello again!");
        console.info(result);

        return result;
    };
};

// Register custom resolvers
module.exports = makeWrapResolversPlugin({
    Mutation: {
        createUser: createUserResolverWrapper()
    }
});
